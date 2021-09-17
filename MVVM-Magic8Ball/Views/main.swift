//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

// Make an instance of the ViewModel (to store questions and advice
var advisor = AdviceViewModel()

// Make a variable to hold the value determining the loop
var looping = 1

import Foundation

if looping == 1 {
    // Program name
    print("MAGIC 8 BALL")
    print("============")
    
    // Ask for user's question
    print("""
NOTE: Questions should be phrased such
      that they can be answered with a
      yes or no response.

""")
    print("What is your question? ")
    // Get input as a non-optional String
    let input = readLine()!
    
    // Print out their question
    print("")
    print("You said: \(input)")
    print("")
    
    
    // Provide the advice by making an instance of the Magic8Ball type and then getting a response
    print(advisor.provideResponseFor(givenQuery: input))
    
    // Ask what the user would like to do
    print("""
          What would you like to do next?
          1 - Ask another question
          2 - See a history of past questions and answers
          
          
          """)
}
// Iterate over all past advisor sessions
for priorSession in advisor.sessions {
    print(priorSession.question)
    print(priorSession.response)
}
