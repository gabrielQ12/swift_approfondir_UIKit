//
//  ViewController.swift
//  approfondir_UIKit
//
//  Created by Gaby on 16/01/2024.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Coder")
    }
    
    override func loadView() {
        super.loadView()
        print("Load View")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View didLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will desapear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disapear")
    }



}

