<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "product".
 *
 * @property int $id
 * @property int $sklad_id
 * @property string $title
 * @property int $cost
 * @property int $title_id
 * @property string $text
 */
class Product extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['sklad_id', 'title', 'text'], 'required'],
            [['sklad_id', 'cost', 'title_id'], 'integer'],
            [['text'], 'string'],
            [['title'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'sklad_id' => 'Sklad ID',
            'title' => 'Title',
            'cost' => 'Cost',
            'title_id' => 'Title ID',
            'text' => 'Text',
        ];
    }
    public static function getTypiList()
    {
        return[
          'первый', 'второй', 'третий'
        ];
    }
}
