<?php
/**
 * Created by PhpStorm.
 * User: asv
 * Date: 05.12.2019
 * Time: 22:23
 */

namespace frontend\models;


use yii\db\ActiveRecord;

class User extends ActiveRecord
{
    public function setPassword($password)
    {
        $this->password = sha1($password);
    }
}