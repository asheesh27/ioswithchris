//
//  SecondViewController.swift
//  WarCardGame
//
//  Created by macbook on 17/02/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var ImgView: UIImageView!
    
    var img = UIImage()
    var fruitName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelName.text = fruitName
        ImgView.image = img
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
