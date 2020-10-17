//
//  HapticFeedback.swift
//  Ben 10 3D Cards
//
//  Created by Gokul Nair on 17/10/20.
//

import Foundation
import  AVKit

class haptickFeedback {

    func haptiFeedback1() {
  //print("haptick done")
  let generator = UINotificationFeedbackGenerator()
  generator.notificationOccurred(.success)
  }
  
 func haptiFeedback2() {
  //print("haptick done")
  let generator = UINotificationFeedbackGenerator()
      generator.notificationOccurred(.warning)
  }
}
