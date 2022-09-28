//
//  ContentView.swift
//  Shared
//
//  Created by Tony Lepage on 2022/4/12.
//

import SwiftUI
import Foundation

class Cdn {
    var id = Int()
    var name = String()
    var imageName = String()
    @Published var rtt = Int()
    var target = String()
}

extension Date {
    var millisecondsSince1970: Int64 {
        Int64((self.timeIntervalSince1970 * 10000.0).rounded())
    }
    
    init(milliseconds: Int64) {
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
    }
}



struct ContentView: View {
    
    @State var cdnList = [
        Cdn(id: 1, name: "Akamai", imageName: "akamai", rtt: 999, target: "https://akamai.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 2, name: "CloudFront", imageName: "cloudfront", rtt: 999, target: "https://cloudfront.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 3, name: "Alibaba", imageName: "alibaba", rtt: 999, target: "https://ali.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 4, name: "Cloudflare", imageName: "cloudflare", rtt: 999, target: "https://cloudflare.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 5, name: "Baishan", imageName: "baishan", rtt: 999, target: "https://baishan.daxinlicai.com/img/r20.gif"),
        Cdn(id: 6, name: "CDNetworks", imageName: "cdnetworks", rtt: 999, target: "https://cdnetworks-global.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 7, name: "Chunghwa", imageName: "chunghwa", rtt: 999, target: "https://chunghwa.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 8, name: "Fastly", imageName: "fastly", rtt: 999, target: "https://fastly.cdnsuehprom.com/img/r20.gif"),
        Cdn(id: 9, name: "Tencent", imageName: "tencent", rtt: 999, target: "https://tencentcloud.cloud-button.com/img/r20.gif"),
        Cdn(id: 10, name: "StackPath", imageName: "stackpath", rtt: 999, target: "https://stackpath.daxinlicai.com/img/r20.gif")
    ]
    
    var body: some View {

        ZStack {
            
            Image("background").resizable().ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("white")
                Spacer()
                HStack {
                    Button(action: {
                          runBeacon()
                    }, label: {
                        HStack{
                            Image("lighthouse 80")
                            Text("Ping!")
                        }
                    })
                    .padding(.all, 5.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    
                }
                Spacer()
                
                
                
                HStack {
                    VStack {
                        
                        HStack{
                            Image(cdnList[0].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[0].name)
                            Spacer()
                            Text(cdnList[0].rtt.description)
                                .padding(.horizontal, 20.0)
                        }
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image(cdnList[1].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[1].name)
                            Spacer()
                            Text(cdnList[1].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        HStack{
                            Image(cdnList[2].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[2].name)
                            Spacer()
                            Text(cdnList[2].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image(cdnList[3].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[3].name)
                            Spacer()
                            Text(cdnList[3].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        HStack{
                            Image(cdnList[4].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[4].name)
                            Spacer()
                            Text(cdnList[4].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image(cdnList[5].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[5].name)
                            Spacer()
                            Text(cdnList[5].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        HStack{
                            Image(cdnList[6].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            
                            Text(cdnList[6].name)
                            Spacer()
                            Text(cdnList[6].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image(cdnList[7].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[7].name)
                            Spacer()
                            Text(cdnList[7].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        HStack{
                            Image(cdnList[8].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[8].name)
                            Spacer()
                            Text(cdnList[8].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image(cdnList[9].imageName).resizable().scaledToFit().frame(width: 96.0, height: 37.0)
                            Text(cdnList[9].name)
                            Spacer()
                            Text(cdnList[9].rtt.description)
                                .padding(.trailing, 20.0)
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal)
        }
    }
    
    func runBeacon() {
        
        for i in cdnList.indices {
            cdnList[i].rtt = pingHost(cdnList[i].target)
            print("RTT of: \(cdnList[i].rtt)")
            updateDEMChain(cdnList[i])
        }
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func pingHost(_ fullURL: String) -> Int {
    let methodStart = Date().millisecondsSince1970

    let url = URL(string: fullURL)
    guard let requestUrl = url else { fatalError()}
    
    var request = URLRequest(url: requestUrl)
    request.httpMethod = "GET"
    
    let task = URLSession.shared.dataTask(with: request) { (data ,response, error) in
            
        // Check if Error took place
        if let error = error {
            print("Error took place \(error)")
            return
        }
        
        // Read HTTP Response Status code
        if let response = response as? HTTPURLResponse {
            print("Response HTTP Status code: \(response.statusCode)")
        }
        
        // Convert HTTP Response Data to a simple String
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print("Response data string:\n \(dataString)")
        }
        
    }
    task.resume()
        
    
    let methodFinish = Date().millisecondsSince1970
    let executionTime = methodFinish - methodStart
    print("Execution Time \(executionTime)")
    return Int(executionTime)
}


func updateDEMChain(updateCdn: Cdn) {

    

}
