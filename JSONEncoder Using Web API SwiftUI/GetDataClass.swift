//
//  GetDataClass.swift
//  JSONEncoder Using Web API SwiftUI
//
//  Created by Md Khaled Hasan Manna on 12/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class GetDataClass : ObservableObject{
    
    @Published var getData = [JsonStruct]()
    
    
    init(){
        
        
        let url = URL(string:"https://restcountries.eu/rest/v2/all")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do{
                
                if error == nil{
                    
                  let data = try JSONDecoder().decode([JsonStruct].self, from: data!)
                    
                    DispatchQueue.main.async {
                        
                        for value in self.getData{
                           print(value.name)
                        }
                        self.getData = data
                    }
                }
                
                
            }
            catch {
               
                print(error.localizedDescription)
            }
            
        }.resume()
        
        
        
        
        
        
        
    }
    
}
