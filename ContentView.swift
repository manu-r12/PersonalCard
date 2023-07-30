//
//  ContentView.swift
//  mycard
//
//  Created by Manu on 2023-07-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
      
                VStack {
             
                    Image("m").resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 140, height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5)
                    )
                        .padding(2)
                    Text("Hi, I am Manu")
                        .font(Font.custom("GloriaHallelujah-Regular", size: 40))
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(1)
                    
                    Text("iOS + Web Developer")
                        .font(Font.custom("Roboto-Light", size: 20))
                        .bold()
                        .foregroundColor(Color.white)
                    Divider()
                  
                    InfoView(phone: "+91 9548275470", img: "phone")
                    InfoView(phone: "manurajbhar12@gmail.com", img: "envelope")
                    
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
        
    let phone: String
    let img : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 60)
            .overlay(HStack {
                Image(systemName: img)
                    .foregroundColor(Color.green)
                
                Text(phone)
            })

            .padding(.all)
    }
}
