//
//  FirstViewController.swift
//  PizzaMakerCousera
//
//  Created by Ricardo Tercero Solis on 17/08/18.
//  Copyright © 2018 R3S. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var small: UIButton!
    @IBOutlet weak var medium: UIButton!
    @IBOutlet weak var large: UIButton!
    
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var slices: UILabel!
    @IBOutlet weak var serves: UILabel!
    var isCompleted = false
    var value = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectSmall(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        medium.isSelected = false
        large.isSelected = false
        
        if sender.isSelected{
            setValue(size: "Small-12\"", slices: "6", serves: "1-2")
        }else{
            setValue(size: "N/A", slices: "N/A", serves: "N/A")
        }
    }
    
    @IBAction func selectMedium(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        small.isSelected = false
        large.isSelected = false
        
        if sender.isSelected{
            setValue(size: "Medium-14\"", slices: "8", serves: "2-3")
        }else{
            setValue(size: "N/A", slices: "N/A", serves: "N/A")
        }
    }
    
    @IBAction func selectLarge(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        medium.isSelected = false
        small.isSelected = false
        
        if sender.isSelected{
            setValue(size: "Large-16\"", slices: "10", serves: "3-4")
        }else{
            setValue(size: "N/A", slices: "N/A", serves: "N/A")
        }
    }
    
    func setValue(size: String, slices: String, serves: String){
        if size == "N/A" {
            isCompleted = false
        }else {
            isCompleted = true
        }
        self.size.text = size
        self.slices.text = slices
        self.serves.text = serves
    }
}

