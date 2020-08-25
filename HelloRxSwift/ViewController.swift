//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Sukumar Anup Sukumaran on 22/08/20.
//  Copyright © 2020 Tech_Tonic. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Observable.from([1,2,4])
    }


}

