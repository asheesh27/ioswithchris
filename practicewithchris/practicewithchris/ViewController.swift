//
//  ViewController.swift
//  practicewithchris
//
//  Created by macbook on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    var number: UIButton?
    @IBOutlet var numbers: [UIButton]!
    
    for number in numbers{
        number.layer.cornerRadius = number.layer.width/2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

