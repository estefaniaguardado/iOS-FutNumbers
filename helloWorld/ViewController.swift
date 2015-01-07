//
//  ViewController.swift
//  helloWorld
//
//  Created by Estefania Chavez Guardado on 1/6/15.
//  Copyright (c) 2015 estefania guardado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func action(sender: AnyObject) {
        hidingLabel();
        
    }
    
    func hidingLabel(){
        label1.text = "Te amo con todo mi corazon amor, gracias por apoyarme :*";
        label1.numberOfLines = 2;
    }

}

