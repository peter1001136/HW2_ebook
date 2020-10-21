//
//  SongsView.swift
//  HW2_ebook
//
//  Created by 陳政沂 on 2020/10/19.
//

import SwiftUI

struct SongsView: View {
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Top 10")) {
                    ForEach(0 ..< Hotsongs.count){(index) in
                        NavigationLink(destination: SongsDetailView(sg: Hotsongs[index])) {
                            SongsRowView(sg: Hotsongs[index])
                        }
                    }
                }
            }
            .navigationTitle("熱門歌曲")
        }
    }
}

struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
