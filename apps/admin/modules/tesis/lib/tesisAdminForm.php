<?php

/**
 * tesis admin form
 *
 * @package    bibliocnic
 * @subpackage tesis
 * @author     Your name here
 */
class TesisAdminForm extends BaseTesisForm
{
  public function configure()
  {
    parent::configure();
	 $this->widgetSchema['tipo'] = new sfWidgetFormChoice(array( 'choices' => array('Pregrado' => 'Pregrado','Maestria' => 'Maestria', 'Doctorado' => 'Doctorado', 'Pos-Doctorado' => 'Pos-Doctorado', 'Diplomado' => 'Diplomado')));
  $this->validatorSchema['institucion'] = new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir la instituci&oacuten', 'min_length' => 'La instituci&oacuten debe tener al menos 3 caracteres'));
  
  $this->validatorSchema['tipo'] = new sfValidatorString(array( 'required' => false));
  $this->validatorSchema['departamento'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'El departamento debe tener al menos 3 caracteres'));
  $this->validatorSchema['ciudad'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'La ciudad debe tener al menos 3 caracteres'));
 $this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
  $this->validatorSchema['tutor'] = new sfValidatorString(array('min_length' =>5, 'required' => true), array ('required'=>'Por vavor inserte el tutor', 'min_length' => 'El tutor debe tener al menos 5 caracteres'));
  }
}