//
//  LandMark.swift
//  LandMarkApp
//
//  Created by Gava Developer on 11/07/2022.
//

import Foundation
import SwiftUI
//Adding Codable conformance makes it easier to move data between the structure and a data file. You’ll rely on the Decodable component of the Codable protocol later in this section to read data from file.
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //Add an imageName property to read the name of the image from the data, and a computed image property that loads an image from the asset catalog.
    //You make the property private because users of the Landmarks structure care only about the image itself.
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
