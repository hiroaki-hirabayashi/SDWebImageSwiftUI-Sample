//
//  SampleView.swift
//  SDWebImageSwiftUI-Sample
//
//  Created by Hiroaki-Hirabayashi on 2022/01/20.
//

import SwiftUI

struct SampleView: View {
    private let url = "https://images.unsplash.com/photo-1637355408849-304221e61a53"

    var body: some View {
        Text("SDWebImageSwiftUI-Sample")
            .font(.system(size: 20))
        AsyncImageDownloader(url: url, type: .sfSymbol, placeholderImage: "photo")
            .frame(width: 300, height: 300, alignment: .center)
        
        AsyncImageDownloader(url: url, type: .assets, placeholderImage: "dog")
            .clipShape(Circle())
            .shadow(radius: 20)
            .frame(width: 300, height: 300, alignment: .center)
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
