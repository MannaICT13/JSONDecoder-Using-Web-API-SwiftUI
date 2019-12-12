//
//  ContentView.swift
//  JSONEncoder Using Web API SwiftUI
//
//  Created by Md Khaled Hasan Manna on 12/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var allData = GetDataClass()
    
    var body: some View {
        
        
        
        NavigationView{
            
            List(self.allData.getData){ value in
                
                VStack{
                    
                     Text(value.name)
                     Text(value.capital)
                     Text(value.region)
                    
                }
               
            }
            
            
            
            
            .navigationBarTitle(Text("Conuntry Info "),displayMode: .inline)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
