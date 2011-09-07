<?php
/**
 * Tesis actions
 * 
 */
class tesisActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new TesisForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido',true);
      $this->redirectBack();
    }
    
    $this->forms['Tesis'] = $form;
  }


}
