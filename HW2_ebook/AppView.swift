//
//  AppView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/17.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("主頁")
                }
            IntroView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("簡介")
                }
            SongsView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("歌曲")
                }
            PhotoView()
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("照片")
                }
        }
        .accentColor(.blue)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
