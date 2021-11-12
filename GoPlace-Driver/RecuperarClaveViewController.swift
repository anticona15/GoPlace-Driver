//
//  RecuperarClaveViewController.swift
//  GoPlace-Driver
//
//  Created by dianna on 11/11/21.
//

import UIKit
import FirebaseAuth
class RecuperarClaveViewController: UIViewController {
    
    @IBOutlet weak var txtCorreo : UITextField!
    
    
    
    @IBAction func btnReturn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func taptoClose(_ sender: Any) {        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnRecuperar(_ sender: Any){
        
        Auth.auth().sendPasswordReset(withEmail: txtCorreo.text ?? "", completion: {(error) in
            if let error = error {
                
                print("Error al enviar correo de recuperacion => \(error)")
            }
            else{
                self.navigationController?.popViewController(animated: true)
                print("Exito! correo enviado correctamente")
            }
            
        })
    }
    
    
    
    
}
