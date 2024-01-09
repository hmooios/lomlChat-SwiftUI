//
//  MessageView.swift
//  lomlChat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 08/01/2024.
//

import SwiftUI

struct MessageView: View {
    var message:Message

        var body: some View {
            if message.isFromCurrentUser() {
                HStack {
                    HStack {
                        Text(message.text)
                            .padding()
                            .foregroundColor(.white) // Text color for sent messages
                    }
                    .frame(maxWidth: 260, alignment: .topLeading)
                    .background(Color.red) // Background color for sent messages
                    .cornerRadius(20)

                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .frame(maxHeight: 32, alignment: .top)
                        .padding(.bottom, 16)
                        .padding(.leading, 4)
                }
                .frame(maxWidth: 360, alignment: .trailing)
            } else {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .frame(maxHeight: 32, alignment: .top)
                        .padding(.bottom, 16)
                        .padding(.leading, 4)

                    HStack {
                        Text(message.text)
                            .padding()
                            .foregroundColor(.white) // Text color for received messages
                    }
                    .frame(maxWidth: 260, alignment: .leading)
                    .background(Color.pink) // Background color for received messages
                    .cornerRadius(20)
                }
                .frame(maxWidth: 360, alignment: .leading)
            }
        }
}

#Preview {
    MessageView(message: Message.example)
}
