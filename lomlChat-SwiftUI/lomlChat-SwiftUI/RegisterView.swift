//
//  RegisterView.swift
//  lomlChat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 07/01/2024.
//
import SwiftUI
//import FirebaseCore
//import FirebaseFirestore
//import FirebaseAuth

struct RegisterView: View {
    @State private var email=""
    @State private var password="123456"
    @State private var registrationMessage=""
    @State private var isRegistrationSuccessful = false

 //   let db = Firestore.firestore()
    var body: some View {
        VStack {
            Text(registrationMessage)
                .foregroundColor(isRegistrationSuccessful ? .blue:.red)
            TextField("Email", text: $email)
                .padding()
                .border(.black)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .padding()
                .border(.black)

            Button("Register") {
//                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
//                    if let e = error{
//                        isRegistrationSuccessful=false
//                        registrationMessage="Registration Failed. \(e.localizedDescription)"
//
//                        print("Cannot register \(e.localizedDescription)")
//                    }else{
//                        isRegistrationSuccessful=true
//                        registrationMessage="Registration Success!"
//
//                    }
//                }
//                saveUserRegistration()
                
                
            }
            .padding()
        }
        .padding()
    }
    
    func saveUserRegistration(){
//        db.collection("users").addDocument(data: [
//            "email":email,
//            "password":password,
//            "date":Date().timeIntervalSince1970
//        ]) { error in
//            if let e=error{
//                print("There was an issue saving data to firestore, \(e)")
//            } else {
//                print("Successfully saved data.")
//            }
//        }
    }
}

#Preview {
    RegisterView()
}
