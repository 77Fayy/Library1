//
//  11.swift
//  Library
//
//  Created by fai alradhi on 27/08/1445 AH.
//

import SwiftUI

struct CustomSignInView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            // Logo and star, replace with your actual assets
            Image("logo1")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 250)
//            Image(systemName: "star.fill")
//                .resizable()
//                .frame(width: 20, height: 20)
//                .foregroundColor(.yellow)

            // Greeting Text
            Text("إغناء")
                .font(.largeTitle)
                .foregroundColor(Color("purple1"))
            Text("اكتشف غناء واتساع في رحلة تجمع بين منتجع القراة والابداع!")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()

            // TextFields for username, email, and password
            Group {
                TextField("الاسم الاول", text: $username)
                TextField("الاسم الاخير", text: $email)
                SecureField("كلمة المرور", text: $password)
            }
            .padding(.horizontal)
            .frame(height: 45)
            .background(Color.white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal)

            // Sign In Button
            Button(action: {
                // Handle sign in action
            }) {
                Text("أنضم معنا")
                    .font(.headline)
                    .foregroundColor(Color("purple1"))                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .cornerRadius(23)
                    .foregroundColor(Color("purple1"))
            }
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.white)
    }
}

struct CustomSignInView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSignInView()
    }
}
