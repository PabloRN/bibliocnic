<?php


class PreguntaTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Pregunta');
    }
}