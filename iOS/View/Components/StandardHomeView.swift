//
//  StandardHomeView.swift
//  netflix-clone (iOS)
//
//  Created by Joel Kingsley on 16/06/2022.
//

import SwiftUI
import Kingfisher

struct StandardHomeView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovie1)
    }
}
