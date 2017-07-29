//
//  ViewController.swift
//  QuizApp
//
//  Created by Cole Hayden on 7/28/17.
//  Copyright © 2017 Cole Hayden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let questions = ["What is my favorite sounding color?", "Favorite bird?", "What is my brothers name?"]
    let answers = [["blood orange", "cherry red", "saffron"], ["Andean", "Turqoise-Browed Motmot", "Hooded Pitohui"], ["John", "Terry", "Gilliam"]]

    //Variables
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0
    var points = 0;
    
    //Label
    @IBOutlet weak var lbl: UILabel!
    //Button
    
    @IBAction func action(_ sender: AnyObject)
    {
        if (sender.tag == Int(rightAnswerPlacement))
        {
            print("Right!")
            points += 1
        }
        else
        {
            print ("Wrong!")
        }
        if(currentQuestion != questions.count)
        {
            newQuestion()
        }
        else
        {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool){
        newQuestion()
    }
    
    //Function that displays new question
    func newQuestion()
    {
        lbl.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        //Create a button
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3
        {
            //Create a button
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else
            {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
        currentQuestion += 1
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

