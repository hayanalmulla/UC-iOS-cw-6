//
//  ContentView.swift
//  StudentsInfo
//
//  Created by macbook on 19/09/2022.
//

import SwiftUI

struct StudentsInfo: Identifiable{
    let id = UUID()
    var name: String
    var year: Int
    var age: Int
}

struct ContentView: View {
    var Students = [
        StudentsInfo(name:"haya",year:3, age:23),
        StudentsInfo(name: "ghadeer", year: 4, age: 22),
        StudentsInfo(name: "hayifa", year: 2, age: 20)
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Image("id")
                .resizable()
                .scaledToFit()
                .padding()
                
            Text("Student Record")
                .bold()
                .foregroundColor(.black)
                .padding()
            ForEach(Students)
            {student in
                VStack(alignment: .leading) {
                HStack{
                    Text("Name:")
                    Text(student.name)
                }
                HStack{
                    Text("Year:")
                    Text(String (student.year))
                }
                HStack{
                    Text("Age:")
                    Text(String(student.age))
                }
                }.padding()
                    }
            Spacer()
            Text("Number of Students: \(Students.count)")
            
                }
            }
            
                
            
            
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
