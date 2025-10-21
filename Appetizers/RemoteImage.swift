//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI
import Combine

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromUrlString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizersRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    
    let urlString: String
    
    var body : some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{ imageLoader.load(fromUrlString: self.urlString)}
    }
}
