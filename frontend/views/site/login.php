<h1>LOGIN</h1>
<?php
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin();?>

<?= $form->field($loginModel, 'email')->textInput(); ?>

<?= $form->field($loginModel, 'password')->passwordInput(); ?>

<div>
    <button class="btn btn-success", type="submit">Login</button>
</div>



<?php $form = ActiveForm::end();?>
