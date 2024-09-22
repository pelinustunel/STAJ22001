//
//  LoginView.swift
//  ProvisionProject
//
//  Created by Pelin Üstünel on 16.07.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isActive: Bool = false
    
    @Binding var direction: Direction
    
    var body: some View {
        VStack{
            GeometryReader{ geometry in
                
                Image(uiImage: UIImage(named: "provision_logo.svg")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                    .offset(x: 120, y: -150)
                
                VStack(alignment: .center) {
                    
                    Text("Login")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color(hex: "5CCAED"))
                        .padding()
                        .offset(x: geometry.size.width * (-0.35))
                    
                    TextField("UserName", text: $username)
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .border(Color.gray)
                        .cornerRadius(15)
                        .padding()
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .border(Color.gray)
                        .cornerRadius(15)
                        .padding()
                    
                    Button(action: {
                        withAnimation {
                            direction = .mainTab
                        }
                    }, label: {
                        Text("Giriş Yap")
                    }).offset(x: 140)
                    
                    
                }
                
            }.offset(y: 200)
        }
    }
}




#Preview {
    LoginView(direction: Binding.constant(Direction.login))
}
