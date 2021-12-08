//
//  ViewController.swift
//  NumbersGame
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var correctGuess = Int.random(in: 1...100)
    
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        let myGuess: Int! = Int(guessTextField.text!)
        print(correctGuess)
        while !guessTextField.text!.isEmpty{
            print(correctGuess)
        if myGuess == correctGuess{
            youGotItAlert()
        } else if myGuess > correctGuess && myGuess <= 100{
            tooHigh()
        }else if myGuess < correctGuess && myGuess >= 1{
            tooLow()
        }else{
            print("please put a number between 1 and 100 only")
            guessTextField.text = ""
            break
        }
        }
        }
    
    
    func youGotItAlert(){
        let alert = UIAlertController(title: "Correct!!!", message: "\(correctGuess) was correct!", preferredStyle: .alert)
        let restart = UIAlertAction(title: "Play Again", style: .default)
        alert.addAction(restart)
        present(alert, animated: true, completion: nil)
        guessTextField.text = ""
    }
    
    
    func tooHigh(){
        let alert = UIAlertController(title: "Incorrect", message: "\(guessTextField.text!) is too high", preferredStyle: .alert)
        let tryAgain = UIAlertAction(title: "Try Again", style: .default)
        alert.addAction(tryAgain)
        present(alert, animated: true, completion: nil)
        guessTextField.text = ""
    }
    
    func tooLow(){
        let alert = UIAlertController(title: "Incorrect", message: "\(guessTextField.text!) is too low", preferredStyle: .alert)
        let tryAgain = UIAlertAction(title: "Try Again", style: .default)
        alert.addAction(tryAgain)
        present(alert, animated: true, completion: nil)
        guessTextField.text = ""
        
    }
    
//    func enterSomething(){
//        let alert = UIAlertController(title: "Empty Field", message: "Please Enter Something", preferredStyle: .alert)
//        let tryAgain = UIAlertAction(title: "OK", style: .default)
//        alert.addAction(tryAgain)
//        present(alert, animated: true, completion: nil)
//        guessTextField.text = ""
//
//    }
}

