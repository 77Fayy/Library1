//
//  SwiftUIView.swift
//  Library
//
//  Created by fai alradhi on 26/08/1445 AH.
//





import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var fristname: String = ""
    @State private var lastname: String = ""
    
    var body: some View {
        
        
        VStack{
            
            
            Image("logo1")
                .resizable()
                .frame(width:260,height: 220)
            
            
            Text("إغناء")
                .font(.largeTitle)
                .foregroundColor(Color("purple1"))
            Text("اكتشف غناء واتساع في رحلة تجمع بين منتجع القراة والابداع!")
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
           
            NavigationView {
                VStack(alignment: .leading, spacing: 5) {
//                    Text("Sign In")
//                        .font(.largeTitle)
                   // Text("الاسم ")
                       
//                        .frame(width: 329, height: 45, alignment: .trailing)
                    
                    
                    TextField("الاسم الاول", text: $username)
                        //.frame(alignment: .bottomLeading)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .position(CGPoint(x: 200, y: 10.0))
                        //.multilineTextAlignment(.center)
                       // .autocapitalization(.none)
                        .frame(width: 350)
                       
                       // .keyboardType(.emailAddress)
                    
                    TextField("الاسم الاخير", text: $fristname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .position(CGPoint(x: 200, y: 10.0))
                        //.multilineTextAlignment(.center)
                       // .autocapitalization(.none)
                        .frame(width: 350)
                    
                    TextField("اسم المستخدم", text: $lastname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .position(CGPoint(x: 200, y: 10.0))
                        //.multilineTextAlignment(.center)
                       // .autocapitalization(.none)
                        .frame(width: 350)
                    
                    SecureField("الرقم السري", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .position(CGPoint(x: 200, y: 10.0))
                        //.multilineTextAlignment(.center)
                       // .autocapitalization(.none)
                        .frame(width: 350)
                    //                    Button(action: signIn) {
                    //                        Text("Sign In")
                    //                            .frame(minWidth: 0, maxWidth: .infinity)
                    //                            .font(.headline)
                    //                            .padding()
                    //                           // .foregroundColor(.white)
                    //                            .foregroundColor(Color("purple1"))
                    //                            .cornerRadius(25)
                    //                    }
                    Button(action: {
                        // Action to perform on button tap
                        print("Button tapped")
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width: 278, height: 45)
                                .cornerRadius(23)
                                .position(CGPoint(x: 200,y: 25))
                                .foregroundColor(Color("purple1")) // Make sure "purple1" is defined in your asset catalog
                            
                            Text("أنضم معنا")
                                .foregroundColor(.white) // Change the color as needed
                                .font(.headline) // Customize font as needed
                        }
                    }
                    Spacer()
                    Spacer()
                }
                Spacer()
                .padding()
            }
        }
    }
        func signIn() {
            // Perform sign-in action here
            // This is where you would typically integrate with your authentication logic
            print("Signing in with email: \(username) and password: \(password)")
        }
    }
#Preview {
    SignInView()
}



//}
//import SwiftUI
//
//struct CustomSignInView: View {
//    @State private var username: String = ""
//    @State private var email: String = ""
//    @State private var password: String = ""
//
//    var body: some View {
//        VStack {
//            // Logo and star, replace with your actual assets
//            Image("logo1")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 300, height: 250)
////            Image(systemName: "star.fill")
////                .resizable()
////                .frame(width: 20, height: 20)
////                .foregroundColor(.yellow)
//            
//            // Greeting Text
//            Text("إغناء")
//                .font(.largeTitle)
//                .foregroundColor(Color.purple)
//            Text("اكتشف غناء واتساع في رحلة تجمع بين منتجع القراة والابداع!")
//                .multilineTextAlignment(.center)
//                .font(.body)
//                .padding()
//            
//            // TextFields for username, email, and password
//            Group {
//                TextField("الاسم الاول", text: $username)
//                TextField("الاسم الاخير", text: $email)
//                SecureField("كلمة المرور", text: $password)
//            }
//            .padding(.horizontal)
//            .frame(height: 45)
//            .background(Color.white)
//            .cornerRadius(8)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(Color.gray, lineWidth: 1)
//            )
//            .padding(.horizontal)
//            
//            // Sign In Button
//            Button(action: {
//                // Handle sign in action
//            }) {
//                Text("أنضم معنا")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity, maxHeight: 45)
//                    .background(Color.purple)
//                    .cornerRadius(23)
//            }
//            .padding(.horizontal)
//            
//            Spacer()
//        }
//        .background(Color.white)
//    }
//}
//
//struct CustomSignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomSignInView()
//    }
//}
