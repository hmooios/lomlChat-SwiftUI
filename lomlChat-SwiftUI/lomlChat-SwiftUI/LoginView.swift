//
//  LoginView.swift
//  lomlChat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 07/01/2024.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = "123456"
    @State private var loginMessage = ""
    @State private var isLoginSuccessful = false
    @State private var navigateToChat = false

    var body: some View {
        VStack {
            Text(loginMessage)
                .foregroundColor(isLoginSuccessful ? .blue : .red)
            TextField("Email", text: $email)
                .padding()
                .border(.black)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .padding()
                .border(.black)

            NavigationLink(destination: ChatView(), isActive: $navigateToChat) {
                EmptyView()
            }
            .hidden()

            Button("Login") {
                Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        print("Login failed: \(e.localizedDescription)")
                        isLoginSuccessful = false
                        loginMessage = "Login Failed. \(e.localizedDescription)"
                    } else {
                        isLoginSuccessful = true
                        loginMessage = "Login Success! "
                        navigateToChat = true
                    }
                }
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
