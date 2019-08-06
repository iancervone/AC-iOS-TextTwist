//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//


//UITextFieldDelegate is a protocol.  It has functions built into it, and they dont not need to be implemented, all of the functions are optional to use.


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  var model = TextTwistModel()
  var info: TestTwistInfo!
  var randomInfo: TestTwistInfo {
    return WordData.allInfo.randomElement()!
  }


  
  @IBOutlet weak var guessingLetters: UITextField!
  @IBOutlet weak var correctIncorrect: UILabel!
  

  
  @IBAction func textInput(_ sender: UITextField) {
  }
  
  
  
  func checkWord(userGuess: String)  {
    if randomInfo.words.contains(userGuess) {
       print("userGuess")
    }
  }

  
  
  override func viewDidLoad() {
    guessingLetters.delegate = self
    self.info = model.randomInfo
    correctIncorrect.text = info.words.joined(separator: " ")
}
 
  
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if model.checkWord(userGuess: textField.text ?? "") {
      correctIncorrect.text = "Correct"
      return true
    } else {
      correctIncorrect.text = "Incorrect"
      return true
    }
  }
}

