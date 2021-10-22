//
//  ContentView.swift
//  H4X0R News
//
//  Created by Andi on 22.10.21.
//

import SwiftUI

struct ContentView: View {
    
    //subscribing to updates from the NetworkManager
    //posts property of networkmanager get's used to populate list
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            //NavLink creates button on right side of cell and on click presents destination(DetailView) when pressed
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        VStack {
                            Text("Points:")
                            Text(String(post.points))
                            .foregroundColor(.green)
                        }
                        .padding(.trailing)
                        Text(post.title)
                            .fontWeight(.semibold)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        //similar to viewDidLoad()
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13 Pro Max")
    }
}
