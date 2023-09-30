//
//  PlaceEditView.swift
//  GuideConsult
//
//  Created by Daeseong on 2023/09/30.
//

import SwiftUI

struct PlaceEditView: View {
    @State var name = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            TextField("Meeting Place", text: $name)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
          
            Spacer()
        }
        .padding(.top)
        .toolbar {
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Save")
            }

        }
    }
}

struct PlaceEditView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceEditView()
    }
}
