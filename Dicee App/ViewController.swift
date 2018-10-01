//
//  ViewController.swift
//  Dicee App
//
//  Created by Aravin Sivakumar on 2018-09-28.
//  Copyright © 2018 Aravin Sivakumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int=0
    var randomDiceIndex2: Int=0
    
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    @IBOutlet weak var dicescore: UITextField!
    
    
    
    @IBOutlet weak var dicescore2: UITextField!
    
    
    @IBOutlet weak var winner: UITextField!
    
    
    
    
    
    
    var counter: Int=0
    
    var score1: Int=0
    
    var score2: Int=0
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        
        reset()
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        updateDice()
    }
        func updateDice(){
        randomDiceIndex1=Int.random(in:0...5)
        randomDiceIndex2=Int.random(in:0...5)
       
        
        
        diceImageView1.image=UIImage(named:"dice\(randomDiceIndex1+1)")
        
        diceImageView2.image=UIImage(named:"dice\(randomDiceIndex2+1)")
            
            let score = randomDiceIndex1+1+randomDiceIndex2+1
            
            if (counter==0){
                
                score1=score
                dicescore.text! = "Score One:\(score)"
                winner.text="WINNER IS...."
                counter=1
            
            
            }
            
            else{
             
            score2=score
             dicescore2.text="Score Two:\(score)"
             counter=0
                
                if (score2>score1){
                    
                    winner.text="PLAYER 2 WINS"
                }
                
                else if (score2<score1){
                    
                    winner.text="PLAYER 1 WINS"
                }
                
                else{
                    
                    winner.text="IT IS A TIE"
                    
                }
                
            
            }
            
            
            
            
            
           
            
            
        }
    
    
    func reset(){
        
        counter=0
        winner.text="WINNER IS...."
        dicescore.text="SCORE ONE: 0"
        dicescore2.text="SCORE TWO: 0"
        
    }
    
    
    
    
    
        
        
        
        
     
        
        
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDice();
    }
    
}

