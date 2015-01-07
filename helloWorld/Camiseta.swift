//
//  Camiseta.swift
//  helloWorld
//
//  Created by Estefania Chavez Guardado on 1/6/15.
//  Copyright (c) 2015 estefania guardado. All rights reserved.
//

import UIKit

class Camiseta: UIView {
   
    private var label1: UILabel;
    private var numeroPlayera = 0;

    required init(coder aDecoder: NSCoder) {

        var playera = UIImageView(image: UIImage(named: "playera"))
        label1 = UILabel()
        
        super.init(coder: aDecoder)
        
        playera.frame = self.bounds
        label1.frame = CGRectMake(self.bounds.width - 35, 30, 20, 21)
        
        self.backgroundColor = UIColor.clearColor()
        self.addSubview(playera)
        self.addSubview(label1)
        
        label1.text = "X"
    }
    
    func estableceNumero(var nuevoNumero : Int)
    {
        numeroPlayera = nuevoNumero;
        label1.text = nuevoNumero.description;
    }
    
    func obtenNumero() -> Int {
        return numeroPlayera;
    }
}
