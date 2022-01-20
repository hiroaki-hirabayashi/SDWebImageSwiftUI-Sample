//
//  AsyncImage.swift
//  SDWebImageSwiftUI-Sample
//
//  Created by Hiroaki-Hirabayashi on 2022/01/20.
//

import SwiftUI
import SDWebImageSwiftUI

/// url: 画像URL, type: AssetsかSFSymbol, placeholderColor: placeholder画像
struct AsyncImageDownloader: View {
    let url: String
    let type: ImageType
    let placeholderImage: String
    
    enum ImageType {
        case assets
        case sfSymbol
    }
    
    var body: some View {
        ZStack {
            WebImage(url: URL(string: url))
                // 画像取得成功時の処理(フォトライブラリ保存等)
                .onSuccess { image, data, cacheType in
                }
                .resizable()
                .placeholder(Image(systemName: "photo"))
                // 画像読込中の画像
                .placeholder {
                    switch type {
                        case .assets:
                            Image(placeholderImage)
                                .resizable()
                                .frame(width: 200, height: 200, alignment: .center)
                                .scaledToFit()
                            
                            
                        case .sfSymbol:
                            Image(systemName: placeholderImage)
                                .resizable()
                                .frame(width: 200, height: 200, alignment: .center)
                                .scaledToFit()
                            
//                            Rectangle()
//                                .foregroundColor(color)
                    }
                }
                .indicator(.activity) // Activity Indicator
                .transition(.fade(duration: 0.5)) // Fade Transition with duration
        }
    }
}
