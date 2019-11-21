//
//  Target_B.swift
//  MainProject
//
//  Created by Jonphy on 2019/11/6.
//  Copyright © 2019 Jonphy. All rights reserved.
//

import UIKit

class Target_B: NSObject {
    
    required override init() {
        super.init()
    }
    
   @objc func Action_viewController(_ params:Dictionary<String, Any>) -> UIViewController {
        
        let b = BViewController.init()
        return b
    }
    
}
