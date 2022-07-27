//
//  CircleImageView.swift
//  LandMarkApp
//
//  Created by Gava Developer on 11/07/2022.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        //original
//        Image("turtlerock")
//            .clipShape(Circle())
//            .overlay(Circle().stroke(.white, lineWidth: 4))
//            .shadow(radius: 7)
        
        //using resizable attribute
        Image("turtlerock")
            .resizable().aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
            .frame(width: 200.0, height: 200.0, alignment: .center)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
