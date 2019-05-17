//
//  ViewController.swift
//  textFieldExample
//
//  Created by Khairani Ummah on 16/05/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordField.delegate = self
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    //untuk kirim data dari halaman ini ke halaman yang diperfoem segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail", let destination = segue.destination as? DetailViewController {
            destination.usernameFromPrevious = usernameField.text
        }
    }
}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameField {
            if textField.text == ""{
                let alert = UIAlertController(title: "Caution", message: "Please Insert Username", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else {
            passwordField.becomeFirstResponder()
            }
        } else {
            passwordField.resignFirstResponder()
        }
        
        return true
    }
}

