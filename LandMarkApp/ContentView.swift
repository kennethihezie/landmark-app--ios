//
//  ContentView.swift
//  LandMarkApp
//
//  Created by Gava Developer on 11/07/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View{
        VStack {
            //When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
            //To allow the map content to extend to the top edge of the screen, add the ignoresSafeArea(edges: .top) modifier to the map view.
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImageView()
                .padding()
                .offset(x: 0.0, y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
                .padding(.bottom, -130)
            //To layer the image view on top of the map view, give the image an offset of -130 points vertically, and padding of -130 points from the bottom of the view.
            //These adjustments make room for the text by moving the image upwards.
            VStack(alignment: .leading) {
                Text("Mount Everest")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                //When you apply a modifier to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                                    .font(.title2)
                
                Text("Descriptive text goes here.")
            }
            .padding()
            //Add a spacer at the bottom of the outer VStack to push the content to the top of the screen.
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
   
//If the preview canvas isn’t visible, select Editor > Canvas to show it.
