//
//  ViewController.swift
//  TravelInfoApp
//
//  Created by Altynay Shomanova on 03/05/2018.
//  Copyright © 2018 Altynay Shomanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameInputField: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var firstName: UILabel!
    
    
    @IBOutlet weak var firstNameInputText: UITextField!
    
    @IBOutlet weak var namePrinted: UILabel!
    
    @IBAction func submitButton(_ sender: UIButton){
        nameInputField = firstNameInputText.text!
        //print(nameInputField)
        namePrinted.text = nameInputField
        firstNameInputText.text = ""
    }
    
}

