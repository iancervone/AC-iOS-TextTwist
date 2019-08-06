//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.



import Foundation
import UIKit

class TextTwistModel {
  
  var randomInfo = WordData.allInfo.randomElement()!
  
  
  func checkWord(userGuess: String) -> Bool {
    return randomInfo.words.contains(userGuess)
   
}
  

  
//    func random() -> TestTwistInfo {
//      return WordData.allInfo.randomElement()!
//    }
  //
  //var guessingLetters:
  //
//  func setGuessingLetters (userGuess: String) -> TestTwistInfo {
//    guessingLetters.text = TextTwistModel.letters
//  }
  //
  //func checkLetter() {
  //  for y in TextTwistModel.letters {
  //    if y ==
  //  }
  //}
  //
  //var guessedWord = String()
  //
//
//
//func checkLetterCount () {
//  if guessedWord.count == 3 {
//    3letters.append(guessedWord)
//  } else {
//  if guessedWord.count == 4 {
//    4letters.append(guessedWord)
//  } else {
//  if guessedWord.count == 5 {
//    5letters.append(guessedWord)
//  } else {
//  if guessedWord.count == 6 {
//    6letters.append(guessedWord)
//        }
//      }
//    }
//  }
//}

}

