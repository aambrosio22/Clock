//
//  LapTimingSaveButtonStopWatchView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 22/11/22.
//

import SwiftUI

struct LapTimingSaveButtonStopWatchView: View {
    var body: some View {
        VStack{
            Image(systemName: "stopwatch.fill")
                .foregroundColor(.white)
                .font(.system(size: 60))
                .padding()
                .cornerRadius(100)
        }
        .colorScheme(.dark)
        .cornerRadius(100)
    }
}

struct LapTimingSaveButtonStopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        LapTimingSaveButtonStopWatchView()
    }
}
