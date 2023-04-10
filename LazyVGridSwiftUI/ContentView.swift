//
//  ContentView.swift
//  LazyVGridSwiftUI
//
//  Created by sss on 10.04.2023.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [.init(.flexible()),
                               .init(.flexible()),
                               .init(.flexible())
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders]) {
                profileSection
                photoSection
            }
        }
    }
    
    var profileSection: some View {
        Section {
            VStack {
                Image("image1")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                Text("Converse")
                    .fontWeight(.bold)
            }
            VStack {
                Text("150")
                    .fontWeight(.bold)
                Text("Subscribe")
                    .fontWeight(.bold)
            }
            VStack {
                Text("120")
                    .fontWeight(.bold)
                Text("Subscriber")
                    .fontWeight(.bold)
            }
            
        } header: {
            HStack {
                Spacer()
                Text("Shoes")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
        }
        .padding()
        .background(.white)
    }
    
    var photoSection: some View {
        Section {
            ForEach(0..<50) { index in
                Image("image1")
                    .resizable()
                    .frame(height: 150)
            }
        } header: {
            
            HStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "grid")
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "globe")
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "video")
                }
            }
            .padding()
            .background(.white)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
