//
//  ContentView.swift
//  demo8
//
//  Created by yw c on 2020/01/25.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = Userlist()
    @State  var selectedStrength = ""
  
  
   
    
    
    var body: some View {
//
//      return Picker(selection:$selectedStrength, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
//                 ForEach(store.mainlist) { datacenter in
//                    Text(datacenter.name)
//                                     }
//         }
           
              NavigationView {
                        Form {
                            Picker(selection: $selectedStrength, label: Text("Datacenter")) {
                                ForEach(store.mainlist) { datacenter in
                                    Text(datacenter.name)
                                }
                            }

                            // Just here for demonstration
                         
                        }
                    }
         
    
    }
    
}
struct singlePicke: View{
    let data: [String]
    @Binding var selectedStrength: [String]
    var body: some View{
        GeometryReader{Geometry in
            
            Picker("picker",selection:self.$selectedStrength[0]){
                ForEach(00..<self.data.count){raw in
                    Text(verbatim:self.data[raw]).tag(self.data[raw])
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
