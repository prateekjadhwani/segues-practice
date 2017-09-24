//
//  ViewController.swift
//  Segues
//
//  Created by Prateek Jadhwani on 9/24/17.
//  Copyright © 2017 Prateek Jadhwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.data = textField.text!
            destinationVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
}

