//
//  ViewController.swift
//  WarCardGame
//
//  Created by macbook on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fruitsview: UITableView!
    
    let fruits = ["banana","apple","blackberry","strawberry","grape","tomato","custardapple","kiwi","orange","pomegranate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fruitsview.delegate = self
        fruitsview.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController?{
            vc.img = UIImage(named: fruits[indexPath.row])!
            vc.fruitName = fruits[indexPath.row].capitalized
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fruitsview.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let fruit = fruits[indexPath.row]
        cell.fruitsImg.image = UIImage(named: fruit)
        cell.nameLbl.text = fruit.capitalized
        return cell
    }
    
    
}


