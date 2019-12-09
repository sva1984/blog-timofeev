<?php
/**
 * Created by PhpStorm.
 * User: asv
 * Date: 05.12.2019
 * Time: 22:56
 */

namespace frontend\models;


use yii\base\Model;

class Signup extends Model
{
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => User::className()],
            ['password', 'string', 'min' => 2, 'max' => '10']
            ];
//        frontend/models/User.php
    }

    /**
     * @return bool
     */
    public function signup()
    {
        $user = new User();
        $user->email = $this->email;
        $user->setPassword($this->password);
        return $user->save();//return true or false

    }
}