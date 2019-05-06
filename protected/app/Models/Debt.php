<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Debt extends Model
{
    protected $tabel = 'debts';

    protected $fillable = [
    	'deptor', 'owed', 'total', 'description'
    ];

    public $timestamps = true;

    public function user()
    {
    	return $this->belongsTo('App\Models\User' , ['debtor' , 'owed']);
    }
}
