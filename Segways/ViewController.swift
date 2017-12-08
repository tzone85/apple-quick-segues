//
//  ViewController.swift
//  Segways
//
//  Created by Thando Mini on 2017/12/08.
//  Copyright © 2017 Thando Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen"{
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textField.text!
        }
    }
    
}

