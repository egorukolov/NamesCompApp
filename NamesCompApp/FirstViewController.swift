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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnersNameTF.text
    }

    @IBAction func showResultButton() {
        performSegue(withIdentifier: "go2Result", sender: nil)
    }
    

}

