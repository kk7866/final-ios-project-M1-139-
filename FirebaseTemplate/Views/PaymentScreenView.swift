//
//  PaymentScreenView.swift
//  FirebaseTemplate
//
//  Created by khalid Kaleem on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct PaymentScreenView: View {
    @State var isPaid = false
    var body: some View {
        ScrollView(.vertical){
            VStack {
                PosterDescripView()
                VStack{
                    Text("Seat")
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                        .padding(.top, 34.0)
                    Text("A1")
                        .padding(20)
                    Text("Date & Time")
                        .padding(20)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                    HStack{
                        Text("21:30")
                        Text("15 January 2020")
                    }
                    .padding(20)
                    Text("Address")
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                        .padding(20)
                    Text("Grand Cinema - Eqaila")
                        .padding(20)
                    HStack {
                        Button(action: { isPaid = true})
                        {
                            Text("Pay with K-Net")
                                .fontWeight(.heavy)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width - 24)
                                .foregroundColor(.white)
                                .background(Color.purple)
                                .clipShape(Rectangle())
                        }.alert(isPresented: $isPaid, content: {
                                    Alert(title: Text("Payment successfull! "))
                                    })
                    }
                    Button(action: { isPaid = true})
                    {
                        Text("Pay with Visa")
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 24)
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .clipShape(Rectangle())
                    }
                    .alert(isPresented: $isPaid, content: {
                                Alert(title: Text("Payment successfull! "))
                                })
                }
            }
        }
    }
}

struct PaymentScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentScreenView()
    }
}

struct PosterDescripView: View {
    var body: some View {
        ZStack {
            Image("poster")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text("How To Train Your")
                    .font(.system(size: 28))
                    .foregroundColor(.white)
                Text("Dragon3")
                    .font(.system(size: 28))
                    .foregroundColor(.white)
            }
            .offset(x: -90, y: 70)
        }
    }
}

