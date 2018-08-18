//
//  ThirdViewController.swift
//  PizzaMakerCousera
//
//  Created by Ricardo Tercero Solis on 17/08/18.
//  Copyright © 2018 R3S. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var sinQueso: UIImageView!
    @IBOutlet weak var cheddar: UIImageView!
    @IBOutlet weak var mozzarrella: UIImageView!
    @IBOutlet weak var parmesano: UIImageView!
    var isCompleted = false
    var value = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapSinQueso = UITapGestureRecognizer(target: self, action: #selector(ThirdViewController.selectSinQueso))
        let tapCheddar = UITapGestureRecognizer(target: self, action: #selector(ThirdViewController.selectCheddar))
        let tapMozzarrella = UITapGestureRecognizer(target: self, action: #selector(ThirdViewController.selectMozzarrella))
        let tapParmesano = UITapGestureRecognizer(target: self, action: #selector(ThirdViewController.selectParmesano))
        
        sinQueso.addGestureRecognizer(tapSinQueso)
        cheddar.addGestureRecognizer(tapCheddar)
        mozzarrella.addGestureRecognizer(tapMozzarrella)
        parmesano.addGestureRecognizer(tapParmesano)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func selectSinQueso(){
        if value == "Sin Queso"{
            sinQueso.alpha = 0.5
            value = ""
        }else{
            sinQueso.alpha = 1
            value = "Sin Queso"
        }
        cheddar.alpha = 0.5
        mozzarrella.alpha = 0.5
        parmesano.alpha = 0.5
        self.isCompleted = self.value != ""
    }
    
    @objc func selectCheddar(){
        if value == "Cheddar"{
            cheddar.alpha = 0.5
            value = ""
        }else{
            cheddar.alpha = 1
            value = "Sin Queso"
        }
        sinQueso.alpha = 0.5
        mozzarrella.alpha = 0.5
        parmesano.alpha = 0.5
        self.isCompleted = self.value != ""
    }
    
    @objc func selectMozzarrella(){
        if value == "Mozzarrella"{
            mozzarrella.alpha = 0.5
            value = ""
        }else{
            mozzarrella.alpha = 1
            value = "Mozzarrella"
        }
        sinQueso.alpha = 0.5
        cheddar.alpha = 0.5
        parmesano.alpha = 0.5
        self.isCompleted = self.value != ""
    }
    
    @objc func selectParmesano(){
        if value == "Parmesano"{
            parmesano.alpha = 0.5
            value = ""
        }else{
            parmesano.alpha = 1
            value = "Parmesano"
        }
        sinQueso.alpha = 0.5
        cheddar.alpha = 0.5
        mozzarrella.alpha = 0.5
        self.isCompleted = self.value != ""
    }

}
