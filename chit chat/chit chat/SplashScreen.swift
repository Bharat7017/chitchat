//
//  SplashScreen.swift
//  chit chat
//
//  Created by Aman Agrawal on 13/04/24.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    @State private var scale = 0.7
    var body: some View {
        ZStack {
                    if self.isActive {
                        LoginView(didCompleteLoginProgress: {})
                    } else {
//
                        Image("splashscreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .scaleEffect(scale)
                            .onAppear{
                                withAnimation(.easeIn(duration: 0.7)) {
                                    self.scale = 0.9
                                }
                            }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            
    }
}

#Preview {
    SplashScreen()
}
