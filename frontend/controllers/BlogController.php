<?php

namespace frontend\controllers;

use common\models\Blog;
use frontend\models\Post;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;


/**
 * Site controller
 */
class BlogController extends Controller
{

    /**
     * Displays homepage.
     * Post $post
     * @return mixed
     */
    public function actionIndex()
    {
        $post = new Post();
        echo $post->property1;
        echo $post->property2;

        echo "<pre>";
        $post->test();
        echo "<pre>";
    }


}
