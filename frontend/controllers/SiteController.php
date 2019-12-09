<?php

namespace frontend\controllers;

use Yii;
use frontend\models\Signup;
use yii\web\Controller;

/**
 * Site controller
 */
class SiteController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionSignup()
    {
        $model = new Signup();
        if(isset($_POST['Signup']))
        {
            $model->attributes = Yii::$app->request->post('Signup');
//            $model->password = $_POST['Signup']['password'];

            if($model->validate()){
                $model->signup();
                return $this->goHome();
            }
        }
        return $this->render('signup', ['model' => $model]);
    }

    public function actionLogin()
    {
        return $this->render('login');
    }

}
