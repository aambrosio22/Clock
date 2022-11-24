//
//  RowRepeatView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct RowRepeatView: View {
    
    var body: some View {
        NavigationLink{
            RepeatView()
        }label: {
            HStack{
               Text("Repeat")
                    .foregroundColor(.white)
                    .font(.title3)
                Spacer()
                
                Text("Never")
                    .foregroundColor(.white)
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    
            }
            
        }
        .padding()
        .frame(width: 375, height: 60)
        .cornerRadius(10)
        
    }
}

struct RowRepeatView_Previews: PreviewProvider {
    static var previews: some View {
        RowRepeatView()
    }
}
