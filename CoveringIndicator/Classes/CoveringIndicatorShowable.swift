//
//  CoveringIndicator.swift
//  Pods-CoveringIndicator_Example
//
//  Created by asmz on 2019/03/30.
//

import UIKit

public protocol CoveringIndicatorShowable {}

public extension CoveringIndicatorShowable where Self: UIViewController {

    func showCoveringIndicator() {
        guard let keyWindow = UIApplication.shared.keyWindow else { return }

        let indicatorView = CoveringIndicatorView(frame: keyWindow.bounds)
        keyWindow.addSubview(indicatorView)
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        indicatorView.widthAnchor.constraint(equalTo: keyWindow.widthAnchor).isActive = true
        indicatorView.heightAnchor.constraint(equalTo: keyWindow.heightAnchor).isActive = true
        indicatorView.alpha = 0
        UIView.animate(withDuration: 0.2) {
            indicatorView.alpha = 1
        }
    }

    func hideCoveringIndicator() {
        guard let keyWindow = UIApplication.shared.keyWindow else { return }

        for view in keyWindow.subviews where view is CoveringIndicatorView {
            view.alpha = 1
            UIView.animate(withDuration: 0.2, animations: {
                view.alpha = 0
            }) { _ in
                view.removeFromSuperview()
            }
        }
    }
}
