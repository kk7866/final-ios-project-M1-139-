//
//  SeatsView.swift
//  FirebaseTemplate
//
//  Created by khalid Kaleem on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct SeatsView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                MovieTitleView()
                MovieDateView()
                ButtonGuideView()
                Row1View()
                PaymentButtonView()
            }
        }
    }
}

struct SeatsView_Previews: PreviewProvider {
    static var previews: some View {
        SeatsView()
    }
}

struct MovieTitleView: View {
    var body: some View {
        HStack {
            Text("How To Train Your Dragon 3")
                .font(.title)
            Spacer()
        }.padding(.leading)
    }
}

struct MovieDateView: View {
    var body: some View {
        HStack {
            Text("15 January 2020 - 1:20pm")
            Spacer()
        }.padding([.top, .leading])
    }
}

struct ButtonGuideView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    VStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                        Text("Available")
                    }
                }
                Spacer()
                Button(action: {}) {
                    VStack {
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                        Text("Reserved")
                    }
                }
                Spacer()
                Button(action: {}) {
                    VStack {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                        Text("Selected")
                    }
                }
            }
            .padding(32.0)
            Rectangle()
                .foregroundColor(.blue)
                .padding()
            Text("SCREEN")
                .padding(23.0)

        }
    }
}

struct Row1View: View {
    @State var tapped :Bool = true
    var body: some View {
        VStack {
//            HStack(alignment: .center){
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//                Text("A")
//
//            }
            
            HStack{
                Text("1")
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 30, height: 30)
                        .cornerRadius(7)
                }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
            }
            .padding(.bottom)
            HStack{
                Text("2")
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
            }
            .padding(.bottom)
            HStack{
                Text("3")
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
            }
            .padding(.bottom)
            HStack{
                Text("4")
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
            }
            .padding(.bottom)
            HStack{
                Text("5")
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
            }
            .padding(.bottom)
            HStack{
                Text("6")
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
                Button(action: {})
                    {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 30, height: 30)
                            .cornerRadius(7)
                    }
            }
            .padding(.bottom)
            HStack{
                Text("7")
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 30, height: 30)
                    .cornerRadius(7)
            }
            .padding(.bottom)

        }
    }
}


struct PaymentButtonView: View {
    var body: some View {
        NavigationLink(
            destination: PaymentScreenView())
        {
            Text("PURCHASE")
                .fontWeight(.heavy)
                .padding()
                .frame(width: UIScreen.main.bounds.width - 24)
                .foregroundColor(.white)
                .background(Color.purple)
                .clipShape(Capsule())
                .padding()
            
        }
    }
}

