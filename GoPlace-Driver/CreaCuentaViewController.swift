//
//  CreaCuentaViewController.swift
//  GoPlace-Driver
//
//  Created by dianna on 11/11/21.
//

import UIKit
import FirebaseAuth

class CreaCuentaViewController: UIViewController {
    @IBOutlet weak var txtCorreo : UITextField!
    @IBOutlet weak var txtClave : UITextField!

    override func viewDidLoad(){
        super.viewDidLoad()
        txtClave.isSecureTextEntry = true
    }
    
    @IBAction func taptoClose(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnReturn(_ sender: Any) {        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func btnCrearCuenta(_ sender: Any){
            
        Auth.auth().createUser(withEmail: txtCorreo.text ?? "", password: txtClave.text ?? "") { (bien, error) in
            
            if let success = bien, error == nil {
                self.navigationController?.popViewController(animated: true)
                print("se registro el usuario correctamente => \(success)")
            
            } else {
                print("error al registrar usuario")
            }
        }
            
    }
    
    
}
