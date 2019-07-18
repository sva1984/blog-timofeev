<?php
/**
 *
 */
?>
<div class="col-lg-12">
    <span><?= $model->title ?><span class="label"><?= $model->author->email?></span></h2>
    <?= $model->text ?>
    <?= \yii\bootstrap\Html::a('подробнее',['blog/one','url'=>$model->url],['class'=>'btn btn-warning'])?>

</div>
