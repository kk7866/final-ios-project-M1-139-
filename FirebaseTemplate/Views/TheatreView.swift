//
//  TheatreView.swift
//  finalProject-swiftui
//
//  Created by khalid Kaleem on 1/14/21.
//

import SwiftUI

struct Seat: Identifiable {
    var id: UUID
    var row: Int
    var number: Int
    
    static var `default`: Seat { Seat(id: UUID(), row: 0, number: 0) }
}

struct TheatreView: View {
    @Binding var selectedSeats:[Seat]
    
    fileprivate func createFrontRows() -> some View {
            
            let rows: Int = 2
            let numbersPerRow: Int = 7
            
            return
                
                VStack {
                    ForEach(0..<rows, id: \.self) { row in
                        HStack{
                            ForEach(0..<numbersPerRow, id: \.self){ number in
                                ChairView(width: 30, seat: Seat(id: UUID(), row: row + 1, number: number + 1) , onSelect: { seat in
                                    self.selectedSeats.append(seat)
                                }, onDeselect: { seat in
                                    self.selectedSeats.removeAll(where: {$0.id == seat.id})
                                })
                            }
                        }
                    }
            }
        }
    
    fileprivate func createBackRows() -> some View {
            
            
            let rows: Int = 5
            let numbersPerRow: Int = 9
            
            return
                
                VStack {
                    ForEach(0..<rows, id: \.self) { row in
                        HStack{
                            ForEach(0..<numbersPerRow, id: \.self){ number in
                                ChairView(width: 30, seat: Seat(id: UUID(), row: row + 3, number: number + 15) , onSelect: { seat in
                                    self.selectedSeats.append(seat)
                                }, onDeselect: { seat in
                                    self.selectedSeats.removeAll(where: {$0.number == seat.number})
                                })
                            }
                        }
                    }
            }
    }
        
        
        fileprivate func createSeatsLegend() -> some View{
                HStack{
                    ChairLegend(text: "Selected", color: .gray)
                    ChairLegend(text: "Reserved", color: .white)
                    ChairLegend(text: "Available", color: .blue)
                }.padding(.horizontal, 20).padding(.top)
            }
        
        var body: some View {
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), .clear]) , startPoint: .init(x: 0.5, y: 0.0), endPoint: .init(x: 0.5, y: 0.5)) )
                    .frame(height: 420)
                    .clipShape(ScreenShape(isClip: true))
                    .cornerRadius(20)
                
                ScreenShape()
                    .stroke(style:  StrokeStyle(lineWidth: 5,  lineCap: .square ))
                    .frame(height: 420)
                    .foregroundColor(Color.blue)
                VStack {
                                     createFrontRows()
                                     createBackRows()
                                     createSeatsLegend()
                                 }
    }
            
        }
    }


struct TheatreView_Previews: PreviewProvider {
    static var previews: some View {
        TheatreView(selectedSeats: .constant([]))
        }
    }




struct ScreenShape: Shape {
var screenCurveture: CGFloat = 30
    var isClip = false
    
    func path(in rect: CGRect) -> Path {
        
        return Path{ path in
            path.move(to: CGPoint(x: rect.origin.x + screenCurveture, y: rect.origin.y +  screenCurveture))
            path.addQuadCurve(to: CGPoint(x: rect.width - screenCurveture, y: rect.origin.y + screenCurveture), control: CGPoint(x: rect.midX, y: rect.origin.y) )
            if isClip{
                path.addLine(to: CGPoint(x: rect.width, y: rect.height))
                path.addLine(to: CGPoint(x: rect.origin.x, y: rect.height))
                path.closeSubpath()
            }
        }
    }
}
