//
//  ViewController.swift
//  ZarApp
//
//  Created by İbrahim Duman on 4.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    let images = [UIImage(named: "dice1"),UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ChangeButton(_ sender: Any) {
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        firstImage.image = images[first]
        secondImage.image = images[second]
    }
}

