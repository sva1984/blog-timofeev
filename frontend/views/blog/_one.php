<?php
/**
 * Created by PhpStorm.
 * User: asv
 * Date: 14.07.2019
 * Time: 17:33
 */
?>
<div class="col-lg-12">
    <h2><?= $model->title ?></h2>
    <?= $model->text ?>
    <?= \yii\bootstrap\Html::a('подробнее',['blog/one','url'=>$model->url],['class'=>'btn btn-warning'])?>

</div>
