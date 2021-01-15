//
//  Home.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 12/27/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI


struct SignOutButton: View{
    var env: FirebaseEnv
    var body: some View{
        Button("Signout") {
            env.signOut()
        }
        .foregroundColor(.red)
    }
}

struct Home: View {
    @EnvironmentObject var env: FirebaseEnv
    let itemsEnvironment = ItemsEnv()
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    NavigationLink(
                            destination: DetailView())
                            {
                                PosterView()
                                
                    }
                    PopularView()
                    ComingSoonView()
                    }
                }
            .navigationBarTitle("Movies")
            .navigationBarItems(trailing: SignOutButton(env: env))
            }
        }
    }

//        NavigationView {
//            Form {
//                Section(footer: Text("you are signed in!") , content: {
//                    NavigationLink("Add a new item", destination: AddItem()
//                                    .environmentObject(itemsEnvironment))
//                    NavigationLink("List all items", destination: ListItems()
//                                    .environmentObject(itemsEnvironment))
//                })
//            }
//            .navigationTitle("Home")
//            .navigationBarItems(trailing: SignOutButton(env: env))
//        }
//    }
//}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(FirebaseEnv())
    }
}

struct PosterView: View {
    var body: some View {
        Image("poster")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            .padding()
        
    }
}

struct PopularView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
//                Text("See all")
//                    .font(.system(size: 17))
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack{
                    VStack{
                        Image("spiderman")
                            .resizable()
                            .frame(width: 120, height: 160)
                            .cornerRadius(12)
                        Text("Spider-man")
                    }
                    .padding(.leading)
                    VStack{
                        Image("sonic")
                            .resizable()
                            .frame(width: 120, height: 160)
                            .cornerRadius(12)
                        Text("Sonic")
                    }
                    VStack{
                        Image("wall-e")
                            .resizable()
                            .frame(width: 120, height: 160)
                            .cornerRadius(12)
                        Text("Wall-E")
                        
                    }
                    VStack{
                        Image("frozen")
                            .resizable()
                            .frame(width: 120, height: 160)
                            .cornerRadius(12)
                        Text("Frozen")
                    }
                    VStack{
                        Image("alpha")
                            .resizable()
                            .frame(width: 120, height: 160)
                            .cornerRadius(12)
                        Text("Alpha & Omega")
                    }
                }
            }
        }
    }
}

struct ComingSoonView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Coming Soon")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
//                Text("See all")
//                    .font(.system(size: 17))
            }
            .padding()
            ScrollView(.horizontal){
                HStack{
                    VStack {
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=ybji16u608U")!)
                            })
                            {
                                ZStack {
                                    Image("blackwidow")
                                        .resizable()
                                        .frame(width: 170, height: 110)
                                        .cornerRadius(12)
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.gray)
                                }
                            }
                        Text("Black Widow")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        Text("29 April 2021")
                            .font(.system(size: 13))
                    }
                    VStack {
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=_qyw6LC5pnE")!)
                            })
                            {
                                ZStack {
                                    Image("fast9")
                                        .resizable()
                                        .frame(width: 170, height: 110)
                                        .cornerRadius(12)
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.gray)
                                }
                            }
                        Text("Fast 9")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        Text("26 May 2021")
                            .font(.system(size: 13))
                    }
//                    VStack {
//                        ZStack{
//                            Image("fast9")
//                                .resizable()
//                                .frame(width: 170, height: 110)
//                                .cornerRadius(12)
//                            Image(systemName: "play.fill")
//                                .font(.title)
//                                .foregroundColor(.gray)
//                        }
//                        Text("Fast 9")
//                            .font(.system(size: 16))
//                            .fontWeight(.bold)
//                        Text("26 May 2021")
//                            .font(.system(size: 13))}
                    VStack {
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=8vmPwKvn8MY")!)
                            })
                            {
                                ZStack {
                                    Image("venum2")
                                        .resizable()
                                        .frame(width: 170, height: 110)
                                        .cornerRadius(12)
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.gray)
                                }
                            }
                        Text("Venum 2")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        Text("24 June 2021")
                            .font(.system(size: 13))
                    }
//                    VStack {
//                        ZStack{
//                            Image("venum2")
//                                .resizable()
//                                .frame(width: 170, height: 110)
//                                .cornerRadius(12)
//                            Image(systemName: "play.fill")
//                                .font(.title)
//                                .foregroundColor(.gray)
//                        }
//                        Text("Venum 2")
//                            .font(.system(size: 16))
//                            .fontWeight(.bold)
//                        Text("24 June 2021")
//                            .font(.system(size: 13))}
                    VStack {
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=jLMBLuGJTsA")!)
                            })
                            {
                                ZStack {
                                    Image("morbius")
                                        .resizable()
                                        .frame(width: 170, height: 110)
                                        .cornerRadius(12)
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.gray)
                                }
                            }
                        Text("Morbius")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        Text("March 2021")
                            .font(.system(size: 13))
                    }
//                    VStack {
//                        ZStack{
//                            Image("morbius")
//                                .resizable()
//                                .frame(width: 170, height: 110)
//                                .cornerRadius(12)
//                            Image(systemName: "play.fill")
//                                .font(.title)
//                                .foregroundColor(.gray)
//                        }
//                        Text("Morbius")
//                            .font(.system(size: 16))
//                            .fontWeight(.bold)
//                        Text("March 2021")
//                            .font(.system(size: 13))}
                }
                .padding(.leading)
            }
        }
    }
}
