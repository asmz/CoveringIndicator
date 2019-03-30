//
//  ViewController.swift
//  CoveringIndicatorExample
//
//  Created by asmz on 2019/03/30.
//  Copyright © 2019 asmz. All rights reserved.
//

import UIKit
import CoveringIndicator

class ViewController: UIViewController, CoveringIndicatorShowable {

    @IBAction func didTapShowButton() {
        showCoveringIndicator()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) { [weak self] in
            self?.hideCoveringIndicator()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

