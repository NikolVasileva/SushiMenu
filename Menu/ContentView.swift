//
//  ContentView.swift
//  Menu
//
//  Created by Nikol Vasileva on 1.04.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuItemArray:[MenuItem] = [MenuItem]()
    var dataManager = DataManager()
    
    var body: some View {
        VStack {
            Text("Sushi Menu")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.brown)
                .bold()
        }
        
        List(menuItemArray) { item in
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
            
                Spacer()
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
            
        }
        .listStyle(.plain)
        .onAppear() {
            menuItemArray = dataManager.getData()
        }
    }
}

#Preview {
    ContentView()
}
