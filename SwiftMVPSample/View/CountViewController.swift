//
//  CountView.swift
//  SwiftMVPSample
//
//  Created by Hayashi Tsubasa on 2017/01/09.
//  Copyright © 2017年 Tsubasa Hayashi. All rights reserved.
//

import UIKit

protocol CountView: class {
    func onCountChange(num: Int)
}

class CountViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var countUpButton: UIButton!
    
    var countPresenter: CountPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initialize()
    }
    
    private func initialize() {
        countPresenter = CountPresenterImpl.init(view: self)
    }
    
    @IBAction func onCountUpButton(_ sender: UIButton) {
        countPresenter?.onCountUp()
    }
    
    @IBAction func onCountDownButton(_ sender: UIButton) {
        countPresenter?.onCountDown()
    }
    
}

extension CountViewController: CountView {
    internal func onCountChange(num: Int) {
        countLabel.text = String(num)
    }
}