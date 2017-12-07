//
//  ViewController.swift
//  MQShadeView
//
//  Created by 120v on 2017/12/5.
//  Copyright © 2017年 MQ. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - 自定义Present样式
    @IBAction func presentAction(_ sender: UIButton) {
        CustomViewController.present(on: self, title: "") { (code, string) in
            print(string)
        }
    }
    
    @IBAction func systemPresent(_ sender: UIButton) {
        
        let vc: SystemViewController = SystemViewController()
        vc.view.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

