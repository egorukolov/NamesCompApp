//
//  ResultViewController.swift
//  NamesCompApp
//
//  Created by Egor Ukolov on 08.08.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var namesLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var progressView: UIProgressView!
    
    var firstName: String!
    var secondName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesLabel.text = "\(firstName ?? "") and \(secondName ?? "")"
    
    }
    


}
