<?php
use \yii\widgets\ListView;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $model frontend\controllers\BlogController */
//$blog = $dataProvider->getModels();
?>
<div class="body-content">

<?php foreach ($model as $mod)?>

        <h2><span class="badge"><?= $mod->author->username?></span></h2>

    <div class="row">
        <?php foreach ($blogs as $one): ?>
            <div class="col-lg-12">
                <h2><?= $one->title ?><span class="badge"><?= $mod->author->username?></span></h2>
                <?= $one->text ?>
                <?= \yii\bootstrap\Html::a('подробнее',['blog/one','url'=>$one->url],['class'=>'btn btn-warning'])?>

            </div>
        <?php endforeach; ?>
    </div>




</div>
