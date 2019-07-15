<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%artical}}`.
 */
class m190710_082200_create_artical_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%artical}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'body' => $this->text(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%artical}}');
    }
}
