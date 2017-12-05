//
//  CustomViewController.swift
//  MQShadeView
//
//  Created by 120v on 2017/12/5.
//  Copyright © 2017年 MQ. All rights reserved.
//

import UIKit


typealias ZXListCheckEnd = (_ index: Int,_ value: String) -> Void


class CustomViewController: UIViewController,UIViewControllerTransitioningDelegate {

    var callBack: ZXListCheckEnd?
    var titleName: String?
    
    static func present(on vc: UIViewController,title: String,callBack: ZXListCheckEnd?) {
        let listVC = CustomViewController()
        listVC.titleName = title
        listVC.callBack = callBack
        vc.present(listVC, animated: true, completion: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.clear
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.dismiss(animated: true, completion: nil)
    }

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return ZXDimmingPresentationController.init(presentedViewController: presented, presenting: presenting)
    }
}
