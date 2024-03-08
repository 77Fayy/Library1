//
//  ContentView.swift
//  Library
//
//  Created by fai alradhi on 26/08/1445 AH.
//

import SwiftUI

struct Splach: View {
    @State private var isAnimating = false
    @State private var isActive = false
    var body: some View {
        
        if isActive {
            Splach()
        } else {
           
                ZStack {
                   
                 Image("logopage")
                        .resizable()
                        .resizable()
                        .frame(width:260,height: 220)
                    
                    VStack {
                       
                        Image("logo")
                            .resizable()
                            .position(x:150,y:56)
                           
                            .frame(width: 300.0, height: 200.0)
                            .shadow(radius: 100)
                            .aspectRatio(contentMode: .fit)
                          
                     
                            .opacity(isAnimating ? 1.0 : 0.0)
                           .offset(y: isAnimating ? 0 : UIScreen.main.bounds.height / 2)
                            .animation(.easeInOut(duration: 1.0))
                         
                        
                       
                    }}
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                        isAnimating = true
                    }}
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
            
        
     
    }
}

#Preview {
    Splach()
}

