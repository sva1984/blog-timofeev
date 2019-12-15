<?php
/**
 * Created by PhpStorm.
 * User: asv
 * Date: 09.12.2019
 * Time: 22:21
 */

namespace frontend\models;

use yii\base\Model;

class Login extends Model
{
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            [['email'],'email'],
            [['password'], 'passwordValidation']
    ];
    }

    public function passwordValidation($atribute, $params)
    {
        if(!$this->hasErrors()){ //если нет ошибок валидвции
            $user = $this->getUser();//получаем пользователя для дальнейшего сравнения пароля

            if(!$user || $user->validatePassword($this->password)){
                $this->addError($atribute, 'Пароль или email введены неверно');
            }
        }
    }

    public function getUser(){
        return User::findOne(['email'=>$this->email]);//ищем пользуна в БД по введеному email
    }
}