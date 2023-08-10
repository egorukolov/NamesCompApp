//
//  ViewController.swift
//  NamesCompApp
//
//  Created by Egor Ukolov on 07.08.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var yourNameTF: UITextField!
    @IBOutlet var partnersNameTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnersNameTF.text
    }

    @IBAction func showResultButton() {
        guard let firstName = yourNameTF.text,
                let secondName = partnersNameTF.text else { return }
        if firstName.isEmpty || secondName.isEmpty {
            showAlert(title: "Names are missing", message: "Please enter both names😥")
            return
        }
        
        
        performSegue(withIdentifier: "go2Result", sender: nil)
        
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        yourNameTF.text = ""
        partnersNameTF.text = ""
    }

}

extension FirstViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

extension FirstViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == yourNameTF {
            partnersNameTF.becomeFirstResponder()
        } else {
            showResultButton()
        }
        return true
    }
    
}
