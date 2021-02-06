//
//  ContentView.swift
//  MDTextTestApp
//
//  Created by Andre Carrera on 10/9/19.
//  Copyright © 2019 Lambdo. All rights reserved.
//

import SwiftUI
import MDText

struct ContentView: View {
    
    init() {
        // Assigning a closure to have a diffrent behavior while handling links.
        MDLinkHandler.onTapLinkCallback = { url in
            print("This is the tapped link: \(url)")
        }
    }
    
    @State var markdown =
        #"""
    # hello, This is Markdown Live Preview

    ----
    ## what is Markdown?
    see [Wikipedia](https://en.wikipedia.org/wiki/Markdown)

    > Markdown is a lightweight markup language, originally created by John Gruber and Aaron Swartz allowing people "to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML)".
    
    `example code`

    ~~Ciao~~

    ----
    ## usage
    1. Write markdown text in this textarea.
    2. Click 'HTML Preview' button.

    ----
    ## markdown quick reference
    # headers

    *emphasis*

    **strong**

    * list

    > block quote

        code (4 spaces indent)
    [links](https://wikipedia.org)

    ----
    ## changelog
    * 17-Feb-2013 re-design

    ----
    ## thanks
    * [markdown-js](https://github.com/evilstreak/markdown-js)
    """#
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                MDText(markdown: markdown)
            }
            .padding(.horizontal)
        }
        .onAppear(perform: onLoad)
    }
    
    func onLoad() {
//        self.markdown =
//        """
//here is a **preview** and is very *long* !ssd
//that is multiple lines
//"""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
