<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%artical}}`.
 */
class m190710_081433_create_artical_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%artical}}', [
            'id' => $this->primaryKey(),
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
