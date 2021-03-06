//
//  SongsRowView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/19.
//

import SwiftUI

struct SongsRowView: View {
    var sg: Songs
    var body: some View {
        HStack(spacing: 30){
            Image(sg.song_name)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .mask(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            VStack(alignment: .leading) {
                Text(sg.song_name)
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                Text(sg.signer)
                    .font(.system(size: 20))
            }
            Spacer()
        }
        .frame(width: 350)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 233/255, green: 220/255, blue: 180/255), Color(red: 200/255, green: 170/255, blue: 230/255)]), startPoint: UnitPoint(x:0,y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
    }
}

struct SongsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SongsRowView(sg: Hotsongs[0])
            .previewLayout(.sizeThatFits)
    }
}
