<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => "Thương hiệu",
            'class' => 'label label-info'
        ],
        2 => [
            'name' => 'Dung tích',
            'class' => 'label label-default' 
        ],
		3 => [
			'name' => 'Đối tượng áp dụng',
			'class' => 'label label-primary'
		],
		4 => [
			'name' => 'Phân loại nhóm',
			'class' => 'label label-danger'
		],
		5 => [
			'name' => 'Nguồn gốc',
			'class' => 'label label-info'
		]
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type,"[N\A]");
    }

    public static function getListType()
	{
		$that = new self();
		return $that->type;
	}

    public function category()
    {
        return $this->belongsTo(Category::class,'atb_category_id');
    }
}
