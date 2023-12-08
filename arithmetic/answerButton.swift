//
//  answerButton.swift
//  arithmetic
//
//  Created by G10  on 09/12/23.
//

import SwiftUI

struct answerButton: View {
    var number : Int
    
    var body: some View {
        Text("\(number)")
            .frame(width: 110 , height: 110)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(Color.white)
            .background(Color.blue)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            
        
        
        
    }
}

#Preview {
    answerButton(number : 100)
}
