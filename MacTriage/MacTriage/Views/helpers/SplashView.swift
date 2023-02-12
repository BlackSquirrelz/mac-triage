//
//  SplashView.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//

import SwiftUI

struct SplashView: View {

    @State var isActive: Bool = false


    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
