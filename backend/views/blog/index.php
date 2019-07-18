<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel common\models\BlogSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Blogs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="blog-index">


    <p>
        <?= Html::a('Create Blog', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete} {check}',
                'buttons' => [
                    'check' => function ($url, $model, $key) {
                        return Html::a('<i class="fa fa-check"></i>', $url);
                    },
                ],
                'visibleButtons' => [
                    'check' => function ($model, $key, $index) {
                        return $model->status_id === 1;
                    }
                ]
            ],
            'id',
            'title',
//            'text:ntext',
            ['attribute' => 'url', 'format' => 'raw'],
            ['attribute' => 'status_id', 'filter' => \common\models\Blog::getStatusList(), 'value' => 'statusName'],
            'sort',

        ],

    ]);
    ?>

    <?php Pjax::end(); ?>

</div>
