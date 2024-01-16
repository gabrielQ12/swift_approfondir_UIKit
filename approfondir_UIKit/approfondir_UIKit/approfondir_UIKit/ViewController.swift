//
//  ViewController.swift
//  approfondir_UIKit
//
//  Created by Gaby on 16/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    // CG => Core Graphics
    // CGFloate => Decimal
    // CGSize => Taille avec largeur et hauteur
    // CGPoint => Point precis X et Y
    // CGRect => Cadre avec taille et position

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
        self.view.isUserInteractionEnabled = true
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let t = touches.first else { return }
        let position = t.location(in: self.view)
        print("Le CGPoint touche est : \(position)\n. Son X: est de \(position.x) et son Y: est de \(position.y)")
    }



}

