//
//  ContentView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/7.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        VStack{
            Text("亞洲天王 ")
                .font(.system(size: 32))
                .fontWeight(.heavy) +
            Text(" 周杰倫")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .italic()
            VStack{
                if show{
                    Imageview()
                        .transition(.opacity)
                }
            }.animation(.easeInOut(duration:5))
                .onAppear() {
                self.show = true
            }
            .onDisappear(){
                self.show = false
            }
            Text("『 哎喲，不錯喔！』")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding([.bottom, .top], 50)
            HStack(spacing: 30){
                Image("ig")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipped()
                Link("jaychou", destination: URL(string: "https://www.instagram.com/jaychou/?hl=zh-tw")!)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            HStack(spacing: 30){
                Image("phantaci")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 50)
                Link("PHANTACI", destination:URL(string: "https://www.phantacico.com")!)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            Spacer()
                .padding(.bottom, 0)
        }
        .foregroundColor(Color.gray)
        .offset(y:100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Imageview: View {
    var body: some View{
        TabView {
            ForEach(1..<3){(index) in
                Image("jay\(index).jpg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}
