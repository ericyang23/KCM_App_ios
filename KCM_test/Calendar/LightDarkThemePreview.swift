//
//  LightDarkThemePreview.swift
//  KCM_test
//
//  Created by Eric Yang on 8/06/21.
//

import SwiftUI

struct LightDarkThemePreview<Preview: View>: View {

    let preview: Preview

    var body: some View {
        Group {
            LightThemePreview {
                self.preview
            }

            DarkThemePreview {
                self.preview
            }
        }
    }

    init(@ViewBuilder preview: @escaping () -> Preview) {
        self.preview = preview()
    }

}

struct LightThemePreview<Preview: View>: View {

    let preview: Preview

    var body: some View {
        preview
            .previewLayout(.sizeThatFits)
            .colorScheme(.light)
    }

    init(@ViewBuilder preview: @escaping () -> Preview) {
        self.preview = preview()
    }

}

struct DarkThemePreview<Preview: View>: View {

    let preview: Preview

    var body: some View {
        preview
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }

    init(@ViewBuilder preview: @escaping () -> Preview) {
        self.preview = preview()
    }

}
