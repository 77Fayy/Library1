//
//  Book.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

import SwiftUI

struct Book: View {
    var body: some View {
        
        VStack{
            Image("up")
            Spacer()
            Spacer()
            Spacer()
           
            Image("logo1")
                .resizable()
                .frame(width:260,height: 220)
           
        }
        Spacer()
        Spacer()
        Spacer()
       
        
    }
}

#Preview {
    Book()
}
