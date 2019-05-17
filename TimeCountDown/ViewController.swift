//
//  ViewController.swift
//  TimeCountDown
//
//  Created by Jordan Foster on 09/05/2019.
//  Copyright © 2019 Silience. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomWord: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    var wordTime = 45.0
    
    let wordArray = ["Nature", "Secret", "Imagination", "Old","Water","Abstract","Weathered","Calm","Fashion","Colourful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRandomWord(_ sender: Any) {
        
        var countDownTime = wordTime
        let stepDec = 0.01
        
        let randomNum = Int.random(in: 0 ..< wordArray.count)
        
        randomWord.text =  wordArray[randomNum]
        
        let timer = Timer.scheduledTimer(withTimeInterval: countDownTime, repeats: false) { timer in
            self.randomWord.text = "Press the button to get word"
        }
        
        let timer2 = Timer.scheduledTimer(withTimeInterval: stepDec, repeats: true) { timer2 in
            countDownTime = countDownTime - stepDec
            
            self.secondsLabel.text = String(format:"%.2f", countDownTime)
            
            if(countDownTime <= 0.0){
                timer2.invalidate()
                self.secondsLabel.text = String(format:"%.2f", 0.0)
            }
        }
    }
    
}

