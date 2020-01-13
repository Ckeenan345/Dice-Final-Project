  //
  //  ViewController.swift
  //  Dice Final Project
  //
  //  Created by Connor Keenan on 12/6/19.
  //  Copyright © 2019 Connor Keenan. All rights reserved.
  //
  
  import UIKit
  
  class ViewController: UIViewController {
    
    var coinImagesArray: [UIImage] = []
    
    @IBOutlet var colorChangeSegment: UISegmentedControl!
    
    @IBAction func changeBackgroundControl(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            view.backgroundColor = UIColor(red: 0, green: 0, blue: CGFloat(125.0/255), alpha: 1.0)
        case 1:
            view.backgroundColor = UIColor(red:CGFloat(200.0/255), green: 0, blue: 0, alpha: 1.0)
        case 2:
            view.backgroundColor = UIColor(red: 0, green: CGFloat(100.0/255), blue: 0, alpha: 1.0)
        default:
            break
        }
    }
    @IBOutlet var backgroundSwitch: UISwitch!
    @IBOutlet weak var coinLabel: UILabel!
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBAction func flipCoinButton(_ sender: UIButton) { flipCoin()
    }
    
    @IBAction func coinSwitched(_ sender: UISwitch) {
        if(backgroundSwitch.isOn)
        {
            imageViewOutlet.image = UIImage(named: "Heads")
        }
        else
        {
            imageViewOutlet.image = UIImage(named: "Penny1")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func flipCoin() {
        let coins = [1,2]
        
        if let coin = coins.randomElement() {
            coin == 1 ? (coinLabel.text = "Heads") : (coinLabel.text = "Tails")
            coin == 1 ? (imageViewOutlet.image = UIImage(named: "Heads")):
                (imageViewOutlet.image = UIImage(named: "Tails"))
        }
        
        
    }
    func createCoinImagesArray(count: Int, name: String) { for i in 1...count {
        let imageName = UIImage(named: "\(name)\(i)")
        coinImagesArray.append(imageName!)
        }
    }
    
    
  }
  
  
  
  
