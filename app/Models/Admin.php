<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class Admin extends Authenticatable
{
	use Notifiable, HasRoles;

	const LEVEL_ADMIN = 1;
	const LEVEL_STAFF = 2;
	protected $fillable = [
		'name', 'email', 'password', 'address', 'avatar', 'phone', 'level'
	];
}