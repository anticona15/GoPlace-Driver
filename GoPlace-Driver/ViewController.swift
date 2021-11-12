//
//  ViewController.swift
//  GoPlace-Driver
//
//  Created by dianna on 11/11/21.
//

import UIKit
import FirebaseAuth
class ViewController: UIViewController {

    @IBOutlet weak var txtxCorreo : UITextField!
    @IBOutlet weak var txtxClave : UITextField!
    
    @IBOutlet weak var lblTitulo : UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitulo.text = "GoPlace\nDriver"
        txtxClave.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }

    
    @IBAction func taptoClose(_ sender: Any) {
        self.view.endEditing(true)

    }
    
    @IBAction func btnIniciar(_ sender: Any){
        
        Auth.auth().signIn(withEmail: txtxCorreo.text ?? "", password: txtxClave.text ?? "") { (bien, error) in
            
            if let success = bien, error == nil {
                self.performSegue(withIdentifier: "HomeViewController", sender: nil)
                print("Exito! => \(success)")
            } else {
                print("Error al iniciar session")
            }
            
        }
        
        
        
        
    }
  
}

