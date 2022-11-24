//
//  SingleRowRepeatViewChoice.swift
//  Clock
//
//  Created by Antonia Ambrosio on 19/11/22.
//

import SwiftUI

struct SingleRowRepeatViewChoice: View {
    var title: String = " $ nome dei casi SingleRowRepeatview che sono quelli dell'array che devo dichiarare "
    @State var wasCompleted: Bool = false
     
    func selectedChoice() {
         wasCompleted.toggle()
     }
    var body: some View {
        
        Button(action: selectedChoice){
            HStack {
                if(wasCompleted) {
                    Text(title)
                        .foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(Color.orange)
                } else if(!wasCompleted) {
                    Text(title)
                        .foregroundColor(Color.white)
                    Spacer()
                }
            }
            .padding(16)
            .frame(width: 375, height: 44)
            .background(.gray)
            .cornerRadius(10)
            
        }
        .colorScheme(.dark)
        
    }
}

struct SingleRowRepeatViewChoice_Previews: PreviewProvider {
    static var previews: some View {
        SingleRowRepeatViewChoice()
    }
}
