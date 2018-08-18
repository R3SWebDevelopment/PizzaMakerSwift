//
//  FifthViewController.swift
//  PizzaMakerCousera
//
//  Created by Ricardo Tercero Solis on 17/08/18.
//  Copyright © 2018 R3S. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var resultado: UITextView!
    @IBOutlet weak var confirmar: UIButton!
    
    var tamagno: FirstViewController?
    var tipoMasa: SecondViewController?
    var queso: ThirdViewController?
    var ingredientes: ForthViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tamagno =  self.tabBarController?.viewControllers![0] as? FirstViewController
        self.tipoMasa =  self.tabBarController?.viewControllers![1] as? SecondViewController
        self.queso =  self.tabBarController?.viewControllers![2] as? ThirdViewController
        self.ingredientes =  self.tabBarController?.viewControllers![3] as? ForthViewController
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var resultado = ""
        if (self.tamagno?.isCompleted)!{
            let size = self.tamagno?.size.text!
            let slices = self.tamagno?.slices.text!
            let serves = self.tamagno?.serves.text!
            resultado += "Tamaño: \(size) (Slices: \(slices) - Serves: \(serves)) \n"
        }else{
            resultado += "Debe de seleccionar el tamaño de la pizza.\n"
        }

        if (self.tipoMasa?.isCompleted)!{
            let masa = self.tipoMasa?.value
            resultado += "Tipo de masa: \(masa)\n"
        }else{
            resultado += "Debe de seleccionar el tipo de masa de la pizza.\n"
        }
        
        if (self.queso?.isCompleted)!{
            let queso = self.queso?.value
            resultado += "Queso: \(queso)\n"
        }else{
            resultado += "Debe de seleccionar el queso para la pizza.\n"
        }
        
        if (self.queso?.isCompleted)!{
            resultado += "Ingredientes:\n"
            for ingrediente in (self.ingredientes?.value)!{
                resultado += "\(ingrediente)\n"
            }
        }else{
            resultado += "Debe de seleccionar los ingredientes para la pizza.\n"
        }
        
        self.confirmar.isEnabled =  (self.tamagno?.isCompleted)! && (self.tipoMasa?.isCompleted)! && (self.queso?.isCompleted)! && (self.ingredientes?.isCompleted)!
        self.resultado.text = resultado
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
