//
//  CoveringIndicator.swift
//  Pods-CoveringIndicator_Example
//
//  Created by asmz on 2019/03/30.
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
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.startAnimating()
        addSubview(indicator)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
