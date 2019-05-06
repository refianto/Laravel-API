<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Debt;
use App\Models\User;

class DebtController extends Controller
{
    // public $token;

    // public $user;

    public function __construct(\Illuminate\Http\Request $req)
    {
        $this->middleware('auth:api');
        // $this->token = $req->header('Authorization');
        // $this->user = Request()->user();
    }

/*
    Index===================================================
    */

    public function index()
    {
        $user = request()->user();

        $data = Debt::where('debtor' , $user->id)->orWhere('owed' , $user->id)->get();

        $response = array(
            'msg' => 'Succes',
            'data' => $data,
        );
        return response()->json($response, 200);
    }

/*
    Store ===================================================
    */

    public function store(Request $req)
    {
        $user = request()->user();
        $req->validate([
            'debtor' => 'required',
            'owed' => 'required',
            'total' => 'required|numeric|min:3',
            'description' => 'required',
        ]);

        if (!in_array($user->id, array($req->debtor , $req->owed))) {
            $response = array(
                'msg' => 'uare not user logined',
            );
            return response()->json($response , 403);
        }

        $db = new Debt;
        $db->debtor = $req->debtor;
        $db->owed = $req->owed;
        $db->total = $req->total;
        $db->description = $req->description;

        if ($db->save()) {
            $response = array(
                'msg' => 'Data Saved',
                'data' => $db,
            );
            return response()->json($response , 201);
        }

        $response = array(
            'msg' => 'Data invalid!'
        );

        return response()->json($response);
    }

/*
    Show ========================================================
    */
    public function show($id)
    {
        $user = Request()->user();
        $db = Debt::find($id);

        if (!in_array($user->id, array($db->debtor, $db->owed))) {
            $response = array(
                'msg' => 'access rejected',
            );
            return response()->json($response , 403);
        }
        // $token = $http->get();
        if ($db) {
            $response = array(
                'msg' => 'Success',
                'data' => $db,
            );
            return response()->json($response , 302);
        }

        $response = array(
            'msg' => 'Data not found',
        );
        return response()->json($response);
    }

/*
    Update===================================================
    */
    public function update(Request $req, $id)
    {
        $user = Request()->user();
        $req->validate([
            'debtor' => 'required',
            'owed' => 'required',
            'total' => 'required|numeric|min:3',
            'description' => 'required',
        ]);

        // $db = new Debt;
        $db = Debt::find($id);

        if (!in_array($user->id, array($db->debtor, $db->owed))) {
            $response = array(
                'msg' => 'access rejected',
            );
            return response()->json($response, 403);
        }

        $db->debtor = $req->debtor;
        $db->owed = $req->owed;
        $db->total = $req->total;
        $db->description = $req->description;

        if ($db->save()) {
            $response = array(
                'msg' => 'Data Saved',
                'data' => $db,
            );
            return response()->json($response);
        }

        $response = array(
            'msg' => 'Data invalid!',
        );

        return response()->json($response ,304);
    }

/*
    Destroy ================================================
    */
    public function destroy($id)
    {
        // $db = Debt::find($id);

        if (Debt::destroy($id)) {
            $response = array(
                'msg' => 'data was deleted',
            );

            return response()->json($response);
        }

        $response = array(
            'msg' => "Cat't delete data",
        );

        return response()->json($response);
    }

/*
    User =================================================
    */
    public function user($id)
    {
        if (request()->user()->id != $id) {

            $response = array(
                'msg' => 'Not login user'
            );
            return response()->json($response);
        }
        $db = Debt::where('debtor' , $id)->orwhere('owed' , $id)->get();

        foreach ($db as $data) {
            if ($data->debtor or $data->owed) {
                $response = array(
                    'msg' => 'success',
                    'data' => $db,
                    'id' => request()->user()->id,
                );
                return response()->json($response);
            }   
        }

        $response = array(
            'msg' => 'data not found',
        );

            // $this
        return response()->json($response);
    }
}
