//
//  ViewController.swift
//  MonopolyDice
//
//  Created by Aymen on 6/19/18.
//  Copyright © 2018 Aymen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var totalDice: UILabel!
    @IBOutlet weak var diceButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        let randomNum1 = Int(arc4random_uniform(5))+1
        let randomNum2 = Int(arc4random_uniform(5))+1
        
        if(randomNum1 == randomNum2){
            totalDice.text = String(randomNum1 + randomNum2)
            totalDice.textColor = UIColor.red
        }
        else{
            totalDice.text = String(randomNum1 + randomNum2)
            totalDice.textColor = UIColor.black
            
        }
        
        
        leftDice.image = UIImage(named: "dice\(randomNum1).jpg")
        rightDice.image = UIImage(named: "dice\(randomNum2).jpg")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

