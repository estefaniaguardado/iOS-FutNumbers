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
    @IBOutlet var camisetas: [Camiseta]!
    @IBOutlet weak var balon: Balon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: Selector("balonSeleccionado:"))
        balon.addGestureRecognizer(gesture)
    }
    
    func balonSeleccionado(sender: AnyObject) {
        var numero = 0;
        for camiseta in camisetas {
            camiseta.estableceNumero(numero)
            numero++
        }
    }
}

