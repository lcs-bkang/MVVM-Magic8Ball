//
//  Session.swift
//  MVVM-Magic8Ball
//
//  Created by Brad Kang on 2021-09-17.
//

import Foundation

struct Session {
    
    // Question that the user asked, must be set to start the program
    let question: String
    
    // Response will be provided later
    var response: String = ""
}
