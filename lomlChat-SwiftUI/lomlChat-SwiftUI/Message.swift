//
//  Message.swift
//  lomlChat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 07/01/2024.
//

import Foundation
import FirebaseAuth

struct Message:Codable{
   let userUID :String
//    let text:String
//    let time:Date
    var id: String
    var text: String
   // var received: Bool
    var timestamp: Date

    
    func isFromCurrentUser()->Bool{
        guard let user = Auth.auth().currentUser else{
                return false
            }
        
        if user.uid == userUID{
            return true
        }else{
            return false
        }
    }

    static let example = Message(userUID: "", id: "1234", text: "Hello It's me", timestamp: Date())
}
