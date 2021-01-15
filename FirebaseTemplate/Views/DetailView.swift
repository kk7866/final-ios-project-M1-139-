//
//  DetailView.swift
//  FirebaseTemplate
//
//  Created by khalid Kaleem on 1/14/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView(.vertical) {
            PosterView()
            TitleView()
            FilmInfoView()
            RatingsView()
            PlotView()
            CastView()
            PurchaseView()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct TitleView: View {
    var body: some View {
        HStack{
            Text("How to Train Your Dragon 3")
                .fontWeight(.heavy)
                .padding(.leading)
            
            Spacer()
            
            Image(systemName: "bookmark")
                .font(.title)
                .padding(.top, 4)
                .foregroundColor(.yellow)
                .padding(.trailing)
        }
    }
}

struct FilmInfoView: View {
    var body: some View {
        HStack {
            Text("1h 44m | Animation, Action | 1 March 2019")
                .foregroundColor(.secondary)
                .padding(.leading)
            Spacer()
        }
    }
}

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 3) { item in
                Image(systemName: "star.fill")
            }
            Image(systemName: "star.lefthalf.fill")
            Image(systemName: "star")
            
            Text("(3.5)")
                .bold()
                .padding(.leading)
            Spacer()
        }
        .padding(.leading)
        .foregroundColor(.yellow)
    }
}

struct PlotView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Storyline")
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.bottom)
            
            Text("All seems well on the island of Berk as Vikings and dragons live together in peace and harmony. Now a Viking leader, Hiccup finds himself increasingly attracted to Astrid, while his beloved dragon Toothless meets an enchanting creature who captures his eye. When the evil Grimmel launches a devious plan to wipe out all the dragons, Hiccup must unite both clans to find Caldera, a hidden land that holds the key to saving Toothless and his flying friends.")
                .foregroundColor(.secondary)

        }
        .padding()
    }
}

struct CastView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Cast")
                    .fontWeight(.medium)
                Spacer()
                
                Button(action: seeAllButton) {
                    Text("See all")
                }
            }
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: true
                       )
                       {
                HStack {
                        VStack{
                            Image("Grimmel")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(12)
                                    Text("Grimmel")
                                        .fontWeight(.semibold)
                        }
                        .padding(.leading)
                        VStack{
                        Image("Astrid")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(12)
                                Text("Astrid")
                                    .fontWeight(.semibold)
                    }
                    VStack{
                        Image("Valka")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(12)
                                Text("Valka")
                                    .fontWeight(.semibold)
                    }
                    VStack{
                        Image("Hiccup")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(15)
                                Text("Hiccup")
                                    .fontWeight(.semibold)
                    }
                    VStack{
                        Image("Dean-DeBlois")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(15)
                                Text("Dean-DeBlois")
                                    .fontWeight(.semibold)
                        Text("Director")
                            .fontWeight(.semibold)
                    }

                    
                }
            }            }
        }
    
    func seeAllButton() {
        print("See all")
    }
}

struct PurchaseView: View {
    var body: some View {
        NavigationLink(
            destination: SeatsView())
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
