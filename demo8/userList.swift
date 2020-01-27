//
//  Userlist.swift
//  demo8
//
//  Created by yw c on 2020/01/25.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation
import Foundation
import Combine

class Userlist: ObservableObject {
    @Published var mainlist: [Mainlist] = []
    
    
    init() {
        load()
        
      
    }
    
    func load() {
        let url = URL(string: "http://192.168.3.3:3000/user")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.mainlist = try! JSONDecoder().decode([Mainlist].self, from: data!)
            }
        }.resume()
       
    }
}
struct Mainlist: Decodable,Hashable,Identifiable{
    let id: Int
    let name: String
}
