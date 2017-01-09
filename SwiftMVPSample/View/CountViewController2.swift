//
//  CountViewController2.swift
//  SwiftMVPSample
//
//  Created by Hayashi Tsubasa on 1/9/17.
//  Copyright © 2017 Tsubasa Hayashi. All rights reserved.
//

import UIKit

class CountViewController2: UIViewController {
    
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countDownButton2: UIButton!
    @IBOutlet weak var countUpButton2: UIButton!
    
    var countPresenter: CountPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initialize()
    }
    
    private func initialize() {
        countPresenter = CountPresenter.init(view: self)
        countPresenter?.initCount()
    }
    
    @IBAction func onCountUpButton2(_ sender: UIButton) {
        countPresenter?.onCountUp()
    }
    
    @IBAction func onCountDownButton2(_ sender: UIButton) {
        countPresenter?.onCountDown()
    }
    
}

extension CountViewController2: CountViewProtcol {
    internal func onCountChange(num: Int) {
        countLabel2.text = String(num)
    }
}