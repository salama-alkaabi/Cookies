//
//  ContentView.swift
//  Cookies
//
//  Created by sal on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var message = ""
    var body: some View {
        ZStack {
            Color(.gray)
            VStack {
                
                Text("\(counter) cookies eaten")
                    .font(.title)
                    .bold()
                Button{
                    if(counter >= 40){
                        message = "OH NOOOO!!! 😱"
                    }
                    else if(counter > 30){
                        message = " Wha are you doing?? 😰"
                    }
                    else if(counter >= 20){
                        message = " Don't eat too many cookies!! ☹️"
                    }
                    self.counter += 1
                    print("Bye Bye cookie")
                    
                }label:{
                    Text("OM NOM NOM")
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .cornerRadius(10)
                .shadow(color: .white, radius: 5, x: 0.0, y: 0.0)
                
                Text(message)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
