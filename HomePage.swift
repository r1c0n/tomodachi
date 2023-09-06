//
//  HomePage.swift
//  Tomodachi
//
//  Coded by Thosle on 7/11/21.
//

import Foundation
import SwiftUI

struct HomeView : View {
    @ObservedObject var dataHandler : DataHandler
    var body: some View {
        NavigationView {
            List {
                ForEach(self.dataHandler.homePagePosts, id: \.id, content: {
                    post in
                    PostCell(currentPost: post, dataHandler: self.dataHandler).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                })
            }.navigationBarTitle("Tomodachi", displayMode: .inline)
        }
    }
}