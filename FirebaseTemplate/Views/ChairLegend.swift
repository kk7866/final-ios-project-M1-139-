//
//  ChairLegend.swift
//  finalProject-swiftui
//
//  Created by khalid Kaleem on 1/14/21.
//
import SwiftUI
struct ChairLegend: View {
    var text = "Selected"
    var color: Color = .gray
    
    var body: some View {
        HStack{
             ChairView(width: 20,accentColor: color, isSelectable: false)
            Text(text).font(.subheadline).foregroundColor(color)
        }.frame(maxWidth: .infinity)
    }
}
struct ChairLegend_Previews: PreviewProvider {
    static var previews: some View {
        ChairLegend()
    }
}
