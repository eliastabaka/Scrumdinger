//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Milosz Tabaka on 12/06/2022.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lenghtInMinutes, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(data.lenghtInMinutes)) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
