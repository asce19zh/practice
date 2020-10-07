//
//  ContentView.swift
//  practice
//
//  Created by User09 on 2020/10/7.
//

import SwiftUI

struct secondPage: View{
    var body: some View{
                TabView{
                    NavigationLink(
                        destination: RedView(),
                        label: {
                            Color.red
                        })
                        .tabItem{
                            Text("red")
                                Image(systemName: "heart")
                        }
                    ContentView()
                    NavigationLink(
                        destination: YellowView(),
                        label: {
                            Color.yellow
                        })
                        .tabItem{
                            Text("yellow")
                                Image(systemName: "star")
                        }
                    ContentView()
                    NavigationLink(
                        destination: GreenView(),
                        label: {
                            Color.green
                        })
                        .tabItem{
                            Text("green")
                                Image(systemName: "heart")
                        }
                }
    }
}
struct RedView: View{
    var body: some View {
        VStack{
            Link("RED", destination: URL(string: "https://www.google.com/search?q=RED&sxsrf=ALeKk03fjTx3TjtXlhI6ijEhMJlnOklyBQ:1602057599309&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi39fbQgaLsAhUyBKYKHc8WChQQ_AUoAXoECA8QAw&biw=1677&bih=865")!)
        }
    }
}
struct OrangeView: View{
    var body: some View {
        VStack{
            Text("Orange")
        }
    }
}
struct YellowView: View{
    var body: some View {
        VStack{
            Link("Yellow", destination: URL(string: "https://www.google.com/search?q=yellow&tbm=isch&ved=2ahUKEwiH75_SgaLsAhUP4JQKHXAVA84Q2-cCegQIABAA&oq=yellow&gs_lcp=CgNpbWcQAzIECCMQJzIECCMQJzICCAAyAggAMgUIABCxAzICCAAyAggAMgUIABCxAzICCAAyAggAUNrRDljP3A5gv94OaABwAHgAgAEliAHQAZIBATaYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=gnV9X4emBI_A0wTwqozwDA&bih=865&biw=1677")!)
        }
    }
}
struct GreenView: View{
    var body: some View {
        VStack{
            Text("Green")
        }
    }
}
struct BlueView: View{
    var body: some View {
        VStack{
            Text("Blue")
        }
    }
}
struct PurpleView: View{
    var body: some View {
        VStack{
            Text("Purple")
        }
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        NavigationLink(
                            destination: RedView(),
                            label: {
                                Color.red
                                    .frame(width: 200, height: 200)
                            })
                        NavigationLink(
                            destination: OrangeView(),
                            label: {
                                Color.orange
                                    .frame(width: 200, height: 200)
                            })
                        NavigationLink(
                            destination: YellowView(),
                            label: {
                                Color.yellow
                                    .frame(width: 200, height: 200)
                            })
                        NavigationLink(
                            destination: YellowView(),
                            label: {
                                Color.green
                                    .frame(width: 200, height: 200)
                            })
                        NavigationLink(
                            destination: BlueView(),
                            label: {
                                Color.blue
                                    .frame(width: 200, height: 200)
                            })
                        NavigationLink(
                            destination: PurpleView(),
                            label: {
                                Color.purple
                                    .frame(width: 200, height: 200)
                            })
                        
                    }
                })
                NavigationLink(
                    destination: secondPage(),
                    label: {
                        Color.black
                            .frame(width: 400, height: 400)
                    })
                
                Link( destination: URL(string: "https://www.google.com/search?q=gray&tbm=isch&ved=2ahUKEwjH5-jFgqLsAhV6zYsBHZZMAt8Q2-cCegQIABAA&oq=gray&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAA6BAgjECc6BQgAELEDUPv6D1ighRBgp4YQaABwAHgAgAEmiAGBAZIBATSYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=dHZ9X8fdGvqar7wPlpmJ-A0&bih=865&biw=1677")!, label: {
                    Color.gray
                        .frame(width: 400, height: 400)
                })
                NavigationLink(
                    destination: PinkView(),
                    label: {
                        Color.pink
                            .frame(width: 400, height: 400)
                    })
                
            }
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
