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
    @IBOutlet weak var balon: Balon!
    @IBOutlet var camisetas: [Camiseta]!
    @IBOutlet var operadores: [Operador]!
    
    weak var camisetaSeleccionada : Camiseta?
    weak var operadorSeleccionado : Operador?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: Selector("balonSeleccionado:"))
        balon.addGestureRecognizer(gesture)
        
        var numero : Int = 0;
        for camiseta in camisetas {
            var gesture = UITapGestureRecognizer()
            gesture.addTarget(self, action: Selector("camisetaSeleccionada:"))
            camiseta.addGestureRecognizer(gesture)
            
            camiseta.estableceNumero(numero)
            numero++
        }
        
        var infoOperadores = [
            [
                "imagen" : "addSymbol",
                "simbolo" : "+"
            ],
            [
                "imagen" : "addSymbol",
                "simbolo" : "-"
            ],
            [
                "imagen" : "addSymbol",
                "simbolo" : "*"
            ],
            [
                "imagen" : "addSymbol",
                "simbolo" : "/"
            ]
        ]
        
        var indice = 0;
        for operador in operadores {
            var gesture = UITapGestureRecognizer()
            gesture.addTarget(self, action: Selector("operadorSeleccionado:"))
            operador.addGestureRecognizer(gesture)
            var imagen = infoOperadores[indice]["imagen"]!
            var simbolo = infoOperadores[indice]["simbolo"]!
            operador.estableceNumero(simbolo, image: imagen)
            
            indice++
        }
    }
    
    func balonSeleccionado(sender: Balon) {
    }
    
    func camisetaSeleccionada(sender: Camiseta) {
        var nuevoValor : Int?
        
        if let operadorInteres = operadorSeleccionado {
            if let camisetaInicial = camisetaSeleccionada {
                var primerNumero = camisetaInicial.obtenNumero()
                var segundoNumero = sender.obtenNumero()
                switch operadorInteres.obtenNumero() {
                    case "+":
                        nuevoValor = primerNumero + segundoNumero
                    case "-":
                        nuevoValor = primerNumero - segundoNumero
                    case "*":
                        nuevoValor = primerNumero * segundoNumero
                    case "/":
                        nuevoValor = primerNumero / segundoNumero
                default:
                    nuevoValor = nil
                }
            }
        }
        
        if let valorInteres = nuevoValor {
            println("Nuevo valor \(nuevoValor)")
            camisetaSeleccionada = nil
            operadorSeleccionado = nil
        } else {
            camisetaSeleccionada = sender
        }
    }
    
    func operadorSeleccionado(sender: Operador) {
        operadorSeleccionado = sender
    }
}

