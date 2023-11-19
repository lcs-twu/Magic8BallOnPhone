//
//  ContentView.swift
//  Magic8BallOnPhone
//
//  Created by Tom Wu on 2023-10-23.
//

import SwiftUI

struct MainView: View {
    @State private var question = ""
    @State private var responses = [
        "It is certain",
        "It is decidely so.",
        "Without a doubt.",
        "Yes definitely.",
        "You may rely on it.",
        "As I see it, yes.",
        "Most likely.",
        "Outlook good.",
        "Yes.",
        "Signs point to yes.",
        "Reply hazy, try again.",
        "Ask again later.",
        "Better not to tell you now.",
        "Cannot predict now.",
        "Concentrate and ask again.",
        "Don't count on it.",
        "My reply is no.",
        "My sources say no.",
        "Outlook not so good.",
        "Very doubtful.",
    ]
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 40){
                Text("Magic 8 ball")
                    .font(.title)
            }
            Text("NOTE: Questions should be phrased such that they can be answered with a yes or no response.")
            
            Text("What is your question? ")
            TextField("Questions", text: $question)
            .onSubmit {
                            guard question.isEmpty == false else { return }
                        }

            Button("Shake") {
                print(responses.randomElement()!)
            }
            
        }
        .padding()
    }
}

#Preview {
    MainView()
}
