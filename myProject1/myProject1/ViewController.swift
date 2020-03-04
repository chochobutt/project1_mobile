//
//  ViewController.swift
//  myProject1
//
//  Created by Felicia Quichocho on 3/4/20.
//  Copyright © 2020 Felicia Quichocho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var car:Int = 0
    var walk:Int = 0
    var transit:Int = 0
    var sushi:Int = 0
    var ramen:Int = 0
    var pizza:Int = 0
    var give:Int = 0
    var recieve:Int = 0
    var total:Int = 0
    var name:String = ""

    
    //outlets
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myName: UITextField!
    
    //total function
    
    @IBAction func submit(_ sender: Any) {
        total = car + walk + transit + sushi + ramen + pizza + give + recieve
        name = myName.text!
        if(total >= 1 && total <= 3) {
           myTotal.text = "Sorry, \(name) you should not move to Japan I don't think it is right for you!"
            myImage.image = UIImage(named: "notright")
                }
        else if(total > 3 && total <= 7){
           myTotal.text = "You could survive, but you should be more open to new things \(name)"
             myImage.image = UIImage(named: "open")
                }
        else {
             myTotal.text = "Congrat, \(name) you would LOVE to live there, go move there now!"
            myImage.image = UIImage(named: "adventurous")
                }
    }
    
    
    //switches functions
    @IBAction func selectCar(_ sender: UISwitch) {
        if sender.isOn {
                   car = 1
               }
              else {
                   car = 0
               }
    }
    @IBAction func selectWalk(_ sender: UISwitch) {
        if sender.isOn {
                   walk = 2
               }
              else {
                   walk = 0
               }
    }
    @IBAction func selectTransit(_ sender: UISwitch) {
        if sender.isOn {
                   transit = 3
               }
              else {
                   transit = 0
               }
    }
    @IBAction func selectSushi(_ sender: UISwitch) {
        if sender.isOn {
                   sushi = 3
               }
              else {
                   sushi = 0
               }
    }
    @IBAction func selectRamen(_ sender: UISwitch) {
        if sender.isOn {
                   ramen = 2
               }
              else {
                   ramen = 0
               }
    }
    @IBAction func selectPizza(_ sender: UISwitch) {
        if sender.isOn {
                   pizza = 1
               }
              else {
                   pizza = 0
               }
    }
    @IBAction func selectGive(_ sender: UISwitch) {
        if sender.isOn {
                   give = 3
               }
              else {
                   give = 0
               }
    }
    @IBAction func selectRecieve(_ sender: UISwitch) {
        if sender.isOn {
                   recieve = 1
               }
              else {
                   recieve = 0
               }
    }

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

