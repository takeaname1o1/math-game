//
//  ContentView.swift
//  arithmetic
//
//  Created by G10  on 09/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var correctAns = 0
    @State private var choiceArray : [Int] = [1,2,3,4]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulty = 10
    @State private var score = 0
    @State private var hscore = 0

    
    
    var body: some View {
        VStack{
            Text("\(firstNumber) + \(secondNumber)")
                .font(.largeTitle)
                .bold()
            HStack{
                ForEach(0..<2){ index in
                    Button{
                        answerIsCorrect(answer: choiceArray[index])
                        generateAns()
                    } label: {
                        answerButton(number: choiceArray[index])
                    }
                }
            }
            HStack{
                ForEach(2..<4){ index in
                    Button{
                        answerIsCorrect(answer: choiceArray[index])
                        generateAns()
                    } label: {
                        answerButton(number: choiceArray[index])
                    }
                }
            }
            
            Text("score: \(score)")
                .font(.headline)
                .bold() 
            
            Text("highest score : \(hscore)")
                .font(.headline)
                .bold()
            
            
        }.onAppear(perform: {
            generateAns()
        })
    }
    
    func answerIsCorrect(answer: Int){
        let isCorrect = answer == correctAns ? true : false
        
        if isCorrect{
            self.score+=1
            
        }
        else{
            if(hscore<score){
                self.hscore=score
            }
                
            self.score=0
        }
    }
    
    func generateAns(){
        firstNumber = Int.random(in:0...(difficulty/2))
        secondNumber = Int.random(in:0...(difficulty/2))
        var answerList = [Int]()
        
        correctAns=firstNumber+secondNumber
        
        for _ in 0...2{
            answerList.append(Int.random(in: 0...difficulty))
        }
        answerList.append(correctAns)
        
        choiceArray=answerList.shuffled()
        
        if score<0 {
            score=0
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
