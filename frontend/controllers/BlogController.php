<?php

namespace frontend\controllers;

use common\models\Blog;
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
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Blog();
        $blogs = Blog::find()->with('author')->andWhere(['status_id'=>1])->orderBy('sort')->all();
//        $dataProvider = new ActiveDataProvider([
//            'query' => $blogs,
//            'pagination' => [
//                'pageSize' => 10,],
//        ]);

        return $this->render('all', [
            'blogs' => $blogs,
            'model' => $model,
            ]);
    }

    public function actionOne($url)
    {
       if( $blog = Blog::find()->andWhere(['url'=>$url])->one()){
        return $this->render('one', ['blog' => $blog]);
    }
    throw new NotFoundHttpException('ой нет такого блога');
    }
}
