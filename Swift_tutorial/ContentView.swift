//
//  ContentView.swift
//  Swift_tutorial
//
//  Created by 안진우 on 2021/07/06.
//

import SwiftUI

// structure, ContentView is just name of struct because we don't know what is will be
struct ContentView: View {
    //variable. body is name. some View: kind of "some kind of View"
    var body: some View {
        //Horizontal Stack : stack next to each other -> 4 CardViews are stack in line
        //original : Return HStack , but return is ommited
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .padding(.horizontal) //can give padding to HStack
        .foregroundColor(.red) //give backgroundColor as red
    }
}

//for putting CardView() in HStack with cleaner code, make struct CardView()
struct CardView: View {
    //create variable isFaceUp. Default is true. Variable must have value!!
    var isFaceUp: Bool = true
    
    //create variable body with ZStack
    var body: some View {
        //ZStack : overlap each other. in this case, text is overlap on rectangle
        ZStack {
            if isFaceUp { //if 'isFaceUp' is true
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3) //stroke : show only border
                Text("✈️")
                    .font(.largeTitle)
            } else { //if 'isFaceUP' is false, no text overlap on rectangle
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
        }
    }
}





// structure related with content view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // can show different view with darkmode and lightmode
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        ContentView()
            .preferredColorScheme(.light)
    }
}
