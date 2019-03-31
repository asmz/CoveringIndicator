//
//  CoveringIndicator.swift
//  CoveringIndicator
//
//  Created by asmz on 2019/03/30.
//  Copyright © 2019 asmz. All rights reserved.
//

class CoveringIndicatorView: UIView {

    // MARK: - Constructor

    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInit()
    }

    func customInit() {
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.startAnimating()
        addSubview(indicator)

        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
