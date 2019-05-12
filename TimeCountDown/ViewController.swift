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
    
    let wordArray = ["Nature", "Secret", "Imagination", "Old","Water","Abstract","Weathered","Calm","Fashion","Colourful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRandomWord(_ sender: Any) {
        
        let randomNum = Int.random(in: 0 ..< wordArray.count)
        
        randomWord.text =  wordArray[randomNum]
        
        let timer = Timer.scheduledTimer(withTimeInterval: 45.0, repeats: false) { timer in
            self.randomWord.text = "Press the button to get word"
        }
    }
    
}

