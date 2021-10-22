//
//  DetailView.swift
//  H4X0R News
//
//  Created by Andi on 22.10.21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.github.com/straumandi")
    }
}

