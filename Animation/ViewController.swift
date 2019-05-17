//
//  ViewController.swift
//  Animation
//
//  Created by Gabriella Gracia MT on 17/05/19.
//  Copyright © 2019 Gabriella Gracia MT. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var mainView: UIView!
    
    var timer = Timer()
    var colours = UIColor()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getRandomColor()
        timerF()
        
        UIView.animate(withDuration: 2, delay: 0.0, options:[UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse], animations: {
            self.view.backgroundColor = self.colours
            
        }, completion:nil)
    }
    
    func timerF(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector(("getRandomColor")), userInfo: nil, repeats: true)
    }
    
    func getRandomColor(){
        let red   = Float((arc4random() % 256)) / 255.0
        let green = Float((arc4random() % 256)) / 255.0
        let blue  = Float((arc4random() % 256)) / 255.0
        let alpha = Float(1.0)
        colours = UIColor(_colorLiteralRed: red, green: green, blue: blue, alpha: alpha)
    }
        
//        mainView.layer.cornerRadius = mainView.frame.size.width / 2
//
//
//        print(mainView.frame) // cari tau frame awal
//        print("Nilai X = \(mainView.frame.origin.x)") // nilai x
//        print("Nilai Y = \(mainView.frame.origin.y)") // nilai y
//        print("Nilai Height = \(mainView.frame.height)")
//        print("Nilai Width = \(mainView.frame.width)\n\n\n")
//
//        UIView.animate(withDuration: 3) // settings animation
//        {
//            self.mainView.frame.origin.x = 160
//            self.mainView.frame.origin.y = 200
//            print(self.mainView.frame) // cari tau frame awal
//            print("Nilai X = \(self.mainView.frame.origin.x)") // nilai x
//            print("Nilai Y = \(self.mainView.frame.origin.y)") // nilai y
//            print("Nilai Height = \(self.mainView.frame.height)")
//            print("Nilai Width = \(self.mainView.frame.width)")
//        }
        
        
}

