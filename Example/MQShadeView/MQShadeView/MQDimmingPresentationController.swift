//
//  MQDimmingPresentationController.swift
//
//  Created by AidyBao on 2017/10/25.
//  Copyright © 2017年 AidyBao. All rights reserved.
//

import UIKit

class MQDimmingPresentationController: UIPresentationController {
    var maskView:UIView!
    fileprivate func setupMaskView() {
        maskView = UIView(frame: CGRect.zero)
        maskView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
    }
    
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        setupMaskView()
    }
    
    override func presentationTransitionWillBegin() {
        self.maskView.frame = (self.containerView?.bounds)!
        self.containerView?.insertSubview(self.maskView, at: 0)
        self.maskView.alpha = 0
        if (self.presentedViewController.transitionCoordinator != nil) {
            self.presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (context) in
                self.maskView.alpha = 1
            }, completion: nil)
        }
    }
    
    override func dismissalTransitionWillBegin() {
        if (self.presentedViewController.transitionCoordinator != nil) {
            self.presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (context) in
                self.maskView.alpha = 0
            }, completion: nil)
        }
    }
    
    override var shouldRemovePresentersView: Bool{get{return false}}
}
