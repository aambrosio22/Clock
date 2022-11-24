//
//  ButtonStopStopWatchView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 22/11/22.
//

import SwiftUI

struct ButtonStopStopWatchView: View {
    var body: some View {
        VStack{
            Image(systemName: "stop.fill")
                .foregroundColor(.red)
                .font(.system(size: 60))
                .padding()
                .cornerRadius(100)
        }
        .colorScheme(.dark)
        .cornerRadius(100)
        
    }
}


struct ButtonStopStopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStopStopWatchView()
    }
}
