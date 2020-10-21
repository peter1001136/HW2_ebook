//
//  IntroView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/17.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("jay3.jpg")
                    .resizable()
                    .frame(width:400, height:400)
                Spacer()
                Text("周杰倫")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
                Text("\t1979年1月18日出生，為臺灣的華語流行歌手，是流行樂壇中，最具「指標性」與「革命性」的創作型歌手之一。\n\t他打破既有華語音樂的主題、形式，融合多元的音樂素材，創造出多變的歌曲風格，尤以融和中、西式曲風的節奏藍調(R&B)最為著名。\n\t周杰倫出道即迅速走紅，獲獎豐富，成為華語音樂市場中的暢銷異數，其廣大影響力曾形成所謂「周杰倫炫風」。\n\n\t近年跨足電影界，參與多部電影演出，獲得金馬獎「最佳新演員獎」肯定，亦嘗試導演兼演出，獲得耀眼的票房紀錄\n\t周杰倫自己作曲和主唱的作品，多數由方文山作詞，內容比一般流行曲勇於涉獵前所未見的題材，如《爸我回來了》的家庭暴力、《雙截棍》的武術、《愛在西元前》的世界歷史、《梯田》的環保、《四面楚歌》的狗仔隊等，這為當代華語樂壇造成衝擊。\n\t在編曲方面，他的歌曲和音豐富：很多時候主旋律、和音、饒舌、對旋律會一層一層的加上，並在結尾時逐層淡出，頗有層次；同一旋律錄兩條音軌同時在左右耳播放，很有立體的合唱效果。他刻意不清楚的咬字使歌曲的說唱部份更有節奏感。")
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.leading)
            }
        }
    }
    
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
