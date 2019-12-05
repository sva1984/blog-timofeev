<?php
namespace app\components;

use frontend\models\Post;
use yii\base\Behavior;


class MyBehavior extends Behavior
{
    public $property1;
    public $property2 = 'свойство 2';

    public function foo()
    {
        var_dump($this->owner);
    }

    public function events()
    {
        return [
            Post::USER_REG => 'register'
        ];
    }

    public function register()
    {
        echo 'отправит письмо админу';
    }

    public function test()
    {
        $this->property1;
    }

}