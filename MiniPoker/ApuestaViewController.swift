//
//  ApuestaViewController.swift
//  MiniPoker
//
//  Created by marco rodriguez on 18/03/21.
//

import UIKit

class ApuestaViewController: UIViewController {
    
    var apuesta: String?

    @IBOutlet weak var aceptarButton: UIButton!
    @IBOutlet weak var apuestaLabel: UILabel!
    @IBOutlet weak var cantidadApuestaTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func apostarButton(_ sender: UIButton) {
        //mensaje que sale al usuario
        let alerta = UIAlertController(title: "Apostar", message: "Deseas apostar la cantidad de: $ \(cantidadApuestaTextField.text!) ", preferredStyle: .alert)
        //boton que tiene el msj
        let accionAceptar = UIAlertAction(title: "Aceptar", style: .default) { [self] ( _ ) in
            //cuerpo del closure
            print("Aceptaste la apuesta")
            //ejecutar mas codigo
            self.apuestaLabel.text = "Apostaste la cantida de : \(self.cantidadApuestaTextField.text!)"
            //ocultar el boton y el textField
            cantidadApuestaTextField.isHidden = true
            aceptarButton.isHidden = true
            
        }
        
        //crea otra accion
        let accionCancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        //agregan las acciones al msj
        alerta.addAction(accionAceptar)
        alerta.addAction(accionCancelar)
        
        //print(cantidadApuestaTextField.text)
        //
        present(alerta, animated: true)
        
    }
    
    @IBAction func jugarButton(_ sender: UIButton) {
        
    }
    
}
