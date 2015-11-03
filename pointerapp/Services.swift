//
//  Services.swift
//  pointerapp
//
//  Created by stephan kreft on 03/11/2015.
//  Copyright © 2015 stephan kreft. All rights reserved.
//

import UIKit

class Services: NSObject {
    
    var servicesName:String
    var servicesDesc:String
    
    
    override init() {
        servicesName = ""
        servicesDesc = ""
        
        
        
    }
    init(name:String, desc:String) {
        servicesName = name
        servicesDesc = desc
        
        
    }
    

}
