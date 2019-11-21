//
//  ViewController.swift
//  MainProject
//
//  Created by Jonphy on 2019/11/4.
//  Copyright © 2019 Jonphy. All rights reserved.
//

import UIKit
import A_Category
import CTMediator
import A

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.pushAButton())
        // Do any additional setup after loading the view.
    }
    
   @objc func test(localPName:Int) -> Void {
        print(localPName)
    }

    func pushAButton() -> UIButton {
        
        let btn = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 30 ))
        btn.center = self.view.center
        btn.setTitle("pushAButton", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal)
        btn.addTarget(self, action: #selector(pushAAction), for: UIControl.Event.touchUpInside)
        return btn
    }
    
   @objc func pushAAction(){
    
    let a = CTMediator.sharedInstance()?.A_aViewController()
    self.navigationController?.pushViewController(a!, animated: true)
    }
}

