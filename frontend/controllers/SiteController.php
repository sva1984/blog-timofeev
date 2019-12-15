<?php

namespace frontend\controllers;

use frontend\models\Login;
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
//        echo "<pre>";
//        var_dump(Yii::$app->user->identity);die();
        return $this->render('index');
    }

    public function actionLogout()
    {

        if(!Yii::$app->user->isGuest){
            Yii::$app->user->logout();
            return $this->redirect(['login']);
        }
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
        if(!Yii::$app->user->isGuest){
            return $this->goHome();
        }

        $loginModel = new Login();
        if(Yii::$app->request->post('Login')){
            $loginModel->attributes = Yii::$app->request->post('Login');
            if($loginModel->validate()){
                Yii::$app->user->login($loginModel->getUser());
                return $this->goHome();
            }
        }
        return $this->render('login', ['loginModel' => $loginModel]);
    }

}
