//
//  SystemViewController.swift
//  MQShadeView
//
//  Created by 120v on 2017/12/5.
//  Copyright © 2017年 MQ. All rights reserved.
//

import UIKit

class SystemViewController: UIViewController,UIViewControllerTransitioningDelegate {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle =  .overCurrentContext
        self.modalTransitionStyle = .coverVertical
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let vc: UIPresentationController = UIPresentationController.init(presentedViewController: CustomViewController(), presenting: SystemViewController())
        vc.containerView?.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        return vc
    }

}
