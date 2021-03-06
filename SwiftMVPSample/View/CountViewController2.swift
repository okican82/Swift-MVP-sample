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
    
    var countPresenter: CountPresenter?
    var countModel: CountModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        countPresenter?.initCountLabel()
    }
    
    private func initialize() {
        countPresenter = .init(view: self, model: countModel)
    }
    
    @IBAction func onCountUpButton2(_ sender: UIButton) {
        countPresenter?.onCountUp()
    }
    
    @IBAction func onCountDownButton2(_ sender: UIButton) {
        countPresenter?.onCountDown()
    }
    
}

extension CountViewController2: CountViewDelegate {
    internal func onCountChange(num: Int) {
        countLabel2.text = String(num)
    }
}
