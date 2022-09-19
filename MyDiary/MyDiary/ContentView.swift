//
//  ContentView.swift
//  MyDiary
//
//  Created by macbook on 19/09/2022.
//

import SwiftUI

struct Basicview: View {
    let tap : String
    let color : Color
    var body: some View {
        ZStack{
            color
            Text(tap)
        }
    }
}

struct ContentView: View {
    
 let chooseColor = [Color.purple, Color.pink, Color.blue, Color.yellow]
    @State var tap = ""
    @State var selectedColor = Color.clear
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
            VStack{
               Text("Choose your favorite color")
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                HStack{
                    ForEach(chooseColor, id: \.self){
                        color in
                        Circle().frame(width: 50, height: 50)
                            .foregroundColor(color)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
                Text("Write anything you want")
                    .foregroundColor(.white)
                TextField("Type Here", text: $tap)
                    .border(.white, width: 1)
                
                NavigationLink(destination: Basicview(tap: tap, color: selectedColor)) {
                    Text("save")
                        .clipShape(Capsule())
                        .frame(width: 43, height: 44)
                        .foregroundColor(.green)
                }
            }
        }
    }
    }}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
