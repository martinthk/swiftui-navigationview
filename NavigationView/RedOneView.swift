//
//  ContentView.swift
//  NavigationView
//
//  Created by Martin Tom on 29/4/2021.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView{
            VStack{
                CircleNumView(color: .red, num: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                
                NavigationLink(
                    destination: BlueTwoView(),
                    label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
            }
        }
        
        .accentColor(Color(.label))
    }
}

struct BlueTwoView: View {
    var body: some View {
        VStack{
            CircleNumView(color: .blue, num: 1)
                .navigationTitle("Blue Two")
                .offset(y: -60)
            
            NavigationLink(
                destination: GreenThreeView(),
                label: {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
        }
    }
}

struct GreenThreeView: View {
    var body: some View {
        VStack{
            CircleNumView(color: .green, num: 3)
                .navigationTitle("Green Three ")
                .offset(y: -60)
            
        }
    }
}

struct CircleNumView: View {
    
    var color: Color
    var num: Int
    
    var body: some View{
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(num)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            .preferredColorScheme(.dark)
    }
}


