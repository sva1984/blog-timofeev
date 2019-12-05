<?php
namespace frontend\models;


use app\components\MyBehavior;
use yii\base\Model;

class Post extends Model
{
    const USER_REG = 'user reg';

    public $name  = 'class name';

    public function behaviors()
    { return[
        [
            'class' => MyBehavior::className(),
            'property1' => $this->name
        ]
            ];
    }

    public function userReg()
    {
        $this->trigger(self::USER_REG);
    }

}