//
//  girl.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

import SwiftUI

struct girl: View {
    var body: some View {
        
        VStack{
            
            Image("logo1")
                .resizable()
                .frame(width:260,height: 220)
            //  .scaledToFit()
            
            
            Text("إغناء")
                .font(.largeTitle)
                .foregroundColor(Color("purple1"))
            Text("أختر شخصيتك للأنطلاق في رحلة تفاعلية غنية بالمغامرات والمعرفة  ")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            Image("Girl")
                .resizable()
                .scaledToFit()
            ZStack {
                Rectangle()
                    .frame(width: 278, height: 45)
                    .cornerRadius(23)
                    .position(CGPoint(x: 200,y: 25))
                    .foregroundColor(Color("purple1")) // Make sure "purple1" is defined in your asset catalog
                
                Text("انطلق")
                    .foregroundColor(.white) // Change the color as needed
                    .font(.headline) // Customize font as needed
            }
       
            Spacer()
           
              
                
            
         
            
        }
    }
}
#Preview {
    girl()
}
