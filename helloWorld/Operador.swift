//
//  Operador.swift
//  helloWorld
//
//  Created by Estefania Chavez Guardado on 1/7/15.
//  Copyright (c) 2015 estefania guardado. All rights reserved.
//

import UIKit

class Operador: UIView {
    
    private var label1: UIImageView;
    private var numeroPlayera = "";
    
    required init(coder aDecoder: NSCoder) {
        
        var playera = UIImageView(image: UIImage(named: "whistleSymbol"))
        label1 = UIImageView()
        
        super.init(coder: aDecoder)
        
        playera.frame = self.bounds
        label1.frame = CGRectMake(self.bounds.width - 35, 30, 20, 21)
        
        self.backgroundColor = UIColor.clearColor()
        self.addSubview(playera)
        self.addSubview(label1)
    }
    
    func estableceNumero(var nuevoNumero : String, var image : String)
    {
        numeroPlayera = nuevoNumero;
        label1.image = UIImage(named: image)
    }
    
    func obtenNumero() -> String {
        return numeroPlayera;
    }
}
