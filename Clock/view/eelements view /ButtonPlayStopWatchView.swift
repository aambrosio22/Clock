//
//  ButtonPlayStopWatchView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 22/11/22.
//

import SwiftUI

struct ButtonPlayStopWatchView: View {
    var body: some View {
        VStack{
            Image(systemName: "play.fill")
                .foregroundColor(.green)
                .font(.system(size: 60))
                .padding()
                .cornerRadius(100)
        }
        .cornerRadius(100)
        .colorScheme(.dark)
        
    }
}

struct ButtonPlayStopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlayStopWatchView()
    }
}
