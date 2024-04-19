//
//  TreeView.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

struct TreeView: View {
    
    @State private var treeImage = "Tree 0"
    @State private var appleImage = "Apple"
    
    var body: some View {
        
        GeometryReader { geo in
            VStack {
                ZStack {
                    
                    Image(treeImage)
                        .resizable()
                        .scaledToFit()
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 200, y: geo.size.height/4 - 300)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 100, y: geo.size.height/4 - 320)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 20, y: geo.size.height/10 - 180)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 30, y: geo.size.height/10 - 90)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 120, y: geo.size.height/10 - 60)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 200, y: geo.size.height/10 - 120)
                    
                    Image(appleImage)
                        .resizable()
                        .frame(width: 90, height: 90)
                        .offset(x: geo.size.width/10 - 110, y: geo.size.height/10 - 150)
                    
                }
                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            }
        }
    }
}




#Preview {
    TreeView()
}
