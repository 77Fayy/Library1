//
//  boy.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

import SwiftUI

struct boy: View {
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
            Image("boy")
                .resizable()
                .scaledToFit()
            Spacer()
            
           
              
                
            
         
            
        }
    }
}

#Preview {
    boy()
}
