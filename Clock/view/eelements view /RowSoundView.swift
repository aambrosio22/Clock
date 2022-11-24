//
//  RowSoundView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct RowSoundView: View {
    var body: some View {
        NavigationLink{
            SoundView()
        }label: {
            HStack{
                Text("Sound")
                    .foregroundColor(.white)
                    .font(.title3)
                Spacer()
                
                Text("Radar")
                    .foregroundColor(.white)
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    
            }
            Spacer()
            
        }
        .padding()
        .frame(width: 375, height: 60)
        .cornerRadius(10)
    }
}

struct RowSoundView_Previews: PreviewProvider {
    static var previews: some View {
        RowSoundView()
    }
}
