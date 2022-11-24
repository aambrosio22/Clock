//
//  ButtonPauseStopWatchView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 22/11/22.
//

import SwiftUI

struct ButtonPauseStopWatchView: View {
    var body: some View {
        VStack{
            Image(systemName: "pause.fill")
                .foregroundColor(.yellow)
                .font(.system(size: 60))
                .padding()
                .cornerRadius(100)
        }
        .colorScheme(.dark)
        .cornerRadius(100)
        
    }
}

struct ButtonPauseStopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPauseStopWatchView()
    }
}
