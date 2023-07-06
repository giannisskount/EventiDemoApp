//
//  LoginView.swift
//  EventiDemo
//
//  Created by User on 11/6/23.
//

import SwiftUI

struct LoginView: View {

    @State var email: String = ""
    @State var emailAddress: String = ""
    
    var body: some View {
        VStack {
            
            Text("Hey! Welcome Back")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(20)
            
            VStack {
                VStack(spacing: 30) {
                    HStack{
                        Image(systemName:"envelope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        // play with the frame and padding here
                        TextField("Email Address", text: $email)
                    }
                    .modifier(TextfieldViewModifier())
                    
                    HStack{
                        Image(systemName:"lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        SecureField("Password", text:  $emailAddress)
                    }
                    .modifier(TextfieldViewModifier())
                }
                .padding(.horizontal, 40)
            }
        }
    }
}

struct TextfieldViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init(red: 127/255, green: 127/255, blue: 129/255))
            .padding(15)
            .background(Color.init(red: 245/255, green: 246/255, blue: 249/255))
            .cornerRadius(20)
            
//            .foregroundColor(.red)
//            .font(.system(size: 24, weight: .bold, design: .default))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
