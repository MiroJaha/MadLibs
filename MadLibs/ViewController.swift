//
//  ViewController.swift
//  MadLibs
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        messageLabel.text = "No Message Yet"
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        let destination = unwindSegue.source as! SecondViewController
        let adjective = destination.adjectivField.text ?? "Error"
        let verbOne = destination.verbOneField.text ?? "Error"
        let verbTwo = destination.verbTwoField.text ?? "Error"
        let noun = destination.nounField.text ?? "Error"
        
        messageLabel.text = "We are having a perfectly \(adjective) right now. Later we will \(verbOne) and \(verbTwo) in the \(noun)"
    }
    
}

