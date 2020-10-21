//
//  SongsDetailView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/19.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct SongsDetailView: View {
    @State var play = true
    
    var sg: Songs
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    
    var body: some View {
        ScrollView{
            VStack{
                Image(sg.song_name)
                    .resizable()
                    .scaledToFill()
                    .multilineTextAlignment(.leading)
                    .frame(width: 400, height: 400)
                HStack{
                    Text(sg.song_name)
                        .font(.system(size:30))
                        .bold()
                        .foregroundColor(Color(red: 244/255, green: 96/255, blue: 108/255))
                        .padding(.leading, 130)
                    Spacer()
                    Button(action: {
                        let fileUrl = Bundle.main.url(forResource: sg.music, withExtension: "mp3")
                        let playerItem = AVPlayerItem(url: fileUrl!)
                        self.player.replaceCurrentItem(with: playerItem)
                        self.play.toggle()
                        if self.play{
                            self.player.pause()
                        }
                        else{
                            self.player.play()
                        }
                        self.commandCenter.playCommand.addTarget{
                            event in
                            if self.player.rate == 0.0{
                                self.player.play()
                                return .success
                            }
                            return .commandFailed
                        }
                    }){
                        Image(systemName: play ? "play.circle" : "pause.circle")
                            .resizable()
                            .frame(width:50,height:50)
                            .foregroundColor(Color(red: 244/255, green: 96/255, blue: 108/255))
                            .padding(.trailing, 100)
                    }
                }
                Spacer()
                Text(sg.lyrics)
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct SongsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SongsDetailView(sg: Hotsongs[0])
    }
}
