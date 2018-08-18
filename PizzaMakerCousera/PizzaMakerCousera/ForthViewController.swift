//
//  ForthViewController.swift
//  PizzaMakerCousera
//
//  Created by Ricardo Tercero Solis on 17/08/18.
//  Copyright © 2018 R3S. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    @IBOutlet weak var aceituna: UIImageView!
    @IBOutlet weak var anchoa: UIImageView!
    @IBOutlet weak var cebolla: UIImageView!
    @IBOutlet weak var jamon: UIImageView!
    @IBOutlet weak var salchicha: UIImageView!
    @IBOutlet weak var jamonPavo: UIImageView!
    @IBOutlet weak var pigna: UIImageView!
    @IBOutlet weak var peperoni: UIImageView!
    @IBOutlet weak var pimiento: UIImageView!
    var isCompleted = false
    var value: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapAceituna = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectAceituna))
        let tapAnchoa = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectAnchoa))
        let tapCebolla = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectCebolla))
        let tapJamon = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectJamon))
        
        let tapSalchicha = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectSalchicha))
        let tapJamonPavo = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectJamonPavo))
        let tapPigna = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectPigna))
        let tapPeperoni = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectPeperoni))
        let tapPimiento = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.selectPimiento))
        
        aceituna.addGestureRecognizer(tapAceituna)
        anchoa.addGestureRecognizer(tapAnchoa)
        cebolla.addGestureRecognizer(tapCebolla)
        jamon.addGestureRecognizer(tapJamon)
        salchicha.addGestureRecognizer(tapSalchicha)
        jamonPavo.addGestureRecognizer(tapJamonPavo)
        pigna.addGestureRecognizer(tapPigna)
        peperoni.addGestureRecognizer(tapPeperoni)
        pimiento.addGestureRecognizer(tapPimiento)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addValue(value: String){
        self.value.append(value)
        isCompleted = true
    }
    
    func removeValue(value: String){
        let index = self.value.index(of: value)
        self.value.remove(at: index!)
        isCompleted = self.value.count > 0
    }
    
    @objc func selectAceituna(){
        if aceituna.alpha == 1{
            aceituna.alpha = 0.5
            removeValue(value: "Aceituna")
        }else{
            aceituna.alpha = 1
            addValue(value: "Aceituna")
        }
    }
    
    @objc func selectAnchoa(){
        if anchoa.alpha == 1{
            anchoa.alpha = 0.5
            removeValue(value: "Anchoa")
        }else{
            anchoa.alpha = 1
            addValue(value: "Anchoa")
        }
    }
    
    @objc func selectCebolla(){
        if cebolla.alpha == 1{
            cebolla.alpha = 0.5
            removeValue(value: "Cebolla")
        }else{
            cebolla.alpha = 1
            addValue(value: "Cebolla")
        }
    }
    
    @objc func selectJamon(){
        if jamon.alpha == 1{
            jamon.alpha = 0.5
            removeValue(value: "Jamon")
        }else{
            jamon.alpha = 1
            addValue(value: "Jamon")
        }
    }
    
    @objc func selectSalchicha(){
        if salchicha.alpha == 1{
            salchicha.alpha = 0.5
            removeValue(value: "Salchica")
        }else{
            salchicha.alpha = 1
            addValue(value: "Salchica")
        }
    }
    
    @objc func selectJamonPavo(){
        if jamonPavo.alpha == 1{
            jamonPavo.alpha = 0.5
            removeValue(value: "Pavo")
        }else{
            jamonPavo.alpha = 1
            addValue(value: "Pavo")
        }
    }
    
    @objc func selectPigna(){
        if pigna.alpha == 1{
            pigna.alpha = 0.5
            removeValue(value: "Piña")
        }else{
            pigna.alpha = 1
            addValue(value: "Piña")
        }
    }
    
    @objc func selectPeperoni(){
        if peperoni.alpha == 1{
            peperoni.alpha = 0.5
            removeValue(value: "Peperonia")
        }else{
            peperoni.alpha = 1
            addValue(value: "Peperonia")
        }
    }
    
    @objc func selectPimiento(){
        if pimiento.alpha == 1{
            pimiento.alpha = 0.5
            removeValue(value: "Pimiento")
        }else{
            pimiento.alpha = 1
            addValue(value: "Pimiento")
        }
    }

}
