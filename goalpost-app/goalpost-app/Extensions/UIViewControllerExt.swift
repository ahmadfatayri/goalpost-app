//
//  UIViewControllerExt.swift
//  goalpost-app
//
//  Created by Ahmad Fatayri on 3/19/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetails(_ viewControllerToPressent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPressent, animated: false, completion: nil)
    }
    
    func presentSecondaryDetail(_ viewControllerToPressent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        
        guard let presentedViewController = presentedViewController else { return }
        
        presentedViewController.dismiss(animated: false, completion: {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPressent, animated: false, completion: nil)
        })
    }
    
    func dismissDetails() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
