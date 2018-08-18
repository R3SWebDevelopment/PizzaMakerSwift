//
//  SecondViewController.swift
//  PizzaMakerCousera
//
//  Created by Ricardo Tercero Solis on 17/08/18.
//  Copyright © 2018 R3S. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var crujiente: UIImageView!
    @IBOutlet weak var delgada: UIImageView!
    @IBOutlet weak var gruesa: UIImageView!
    
    var isCompleted = false
    var value = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapCrujiente = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.selectCrujiente))
        let tapDelgada = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.selectDelgada))
        let tapGruesa = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.selectGruesa))
        
        crujiente.addGestureRecognizer(tapCrujiente)
        delgada.addGestureRecognizer(tapDelgada)
        gruesa.addGestureRecognizer(tapGruesa)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func selectCrujiente(){
        if value == "Crujiete"{
            crujiente.alpha = 0.5
            value = ""
        }else{
            crujiente.alpha = 1
            value = "Crujiete"
        }
        delgada.alpha = 0.5
        gruesa.alpha = 0.5
    }
    
    @objc func selectDelgada(){
        if value == "Delgada"{
            delgada.alpha = 0.5
            value = ""
        }else{
            delgada.alpha = 1
            value = "Delgada"
        }
        crujiente.alpha = 0.5
        gruesa.alpha = 0.5
    }
    
    @objc func selectGruesa(){
        if value == "Gruesa"{
            gruesa.alpha = 0.5
            value = ""
        }else{
            gruesa.alpha = 1
            value = "Gruesa"
        }
        crujiente.alpha = 0.5
        delgada.alpha = 0.5
    }
    
}

