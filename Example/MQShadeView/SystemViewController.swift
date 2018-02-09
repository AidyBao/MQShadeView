//
//  SystemViewController.swift
//  MQShadeView
//
//  Created by 120v on 2017/12/5.
//  Copyright © 2017年 MQ. All rights reserved.
//

import UIKit

class SystemViewController: UIViewController{
    
    var maskView:UIView!

    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        self.modalPresentationStyle =  .overFullScreen
        self.modalTransitionStyle = .coverVertical
        
        view.backgroundColor = UIColor.clear
        
        maskView = UIView(frame: CGRect.zero)
        maskView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
        maskView.alpha = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.frame = UIScreen.main.bounds
        
        self.maskView.frame = self.view.frame
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupMaskView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    fileprivate func setupMaskView() {
        self.view.insertSubview(self.maskView, at: 0)
        UIView.animate(withDuration: 0.35, animations: {
            self.maskView.alpha = 1
        }) { (finish) in
            self.view.alpha = 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.dismiss(animated: true, completion: nil)
    }
}


