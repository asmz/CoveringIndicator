//
//  CoveringIndicator.swift
//  CoveringIndicator
//
//  Created by asmz on 2019/03/30.
//  Copyright © 2019 asmz. All rights reserved.
//

import UIKit

public protocol CoveringIndicatorShowable {}

public extension CoveringIndicatorShowable where Self: UIViewController {

    func showCoveringIndicator() {
        guard let keyWindow = UIApplication.shared.keyWindow else { return }

        let indicatorView = CoveringIndicatorView()
        indicatorView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        keyWindow.addSubview(indicatorView)

        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        indicatorView.widthAnchor.constraint(equalTo: keyWindow.widthAnchor).isActive = true
        indicatorView.heightAnchor.constraint(equalTo: keyWindow.heightAnchor).isActive = true

        // Animation
        indicatorView.alpha = 0
        UIView.animate(withDuration: 0.2) {
            indicatorView.alpha = 1
        }
    }

    func hideCoveringIndicator() {
        guard let keyWindow = UIApplication.shared.keyWindow else { return }

        for view in keyWindow.subviews where view is CoveringIndicatorView {
            // Animation
            view.alpha = 1
            UIView.animate(withDuration: 0.2, animations: {
                view.alpha = 0
            }) { _ in
                view.removeFromSuperview()
            }
        }
    }
}
