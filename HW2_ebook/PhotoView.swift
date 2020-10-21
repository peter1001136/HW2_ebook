//
//  PhotoView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/18.
//

import SwiftUI

let albumpic = [
    "Jay", "范特西", "八度空間", "葉惠美", "七里香",
    "11月的蕭邦", "依然范特西", "我很忙", "摩杰座",
    "跨時代", "驚嘆號", "12新作", "哎喲不錯哦",
    "周杰倫的床邊故事"
]

struct PhotoView: View {
    var body: some View {
        List{
            ScrollView(.horizontal){
                HStack{
                    ForEach(1 ..< 5){(index) in
                        Image("photoh"+String(index))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 300)
                            .clipped()
                    }
                }
            }
            .frame(height: 300)
            
            ScrollView(.vertical){
                let columns = [GridItem(.adaptive(minimum: 150))]
                LazyVGrid(columns: columns){
                    ForEach(albumpic.indices){(index) in
                        VStack{
                          Rectangle()
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                Image(albumpic[index])
                                    .resizable()
                                    .scaledToFill()
                            )
                            .clipped()
                            Text(albumpic[index])
                        }
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
