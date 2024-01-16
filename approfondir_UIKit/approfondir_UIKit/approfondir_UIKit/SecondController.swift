//
//  SecondController.swift
//  approfondir_UIKit
//
//  Created by Gaby on 16/01/2024.
//

import UIKit

class SecondController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second view")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createView()
    }
    
    func createView() {
        //X
        let x: CGFloat = 69
        //Y
        let y: CGFloat = 134
        //Width
        let width: CGFloat = 200
        //Height
        let heigth: CGFloat = 128
        
        let size: CGSize = CGSize(width: width, height: heigth)
        let point: CGPoint = CGPoint(x: x, y: y)
        
        let rect = CGRect(origin: point, size: size)
        
        // let rect: CGRect = CGRect (x: x, y: y, width: width, height: heigth)
        let v: UIView = UIView(frame: rect)
        v.backgroundColor = .systemRed
        self.view.addSubview(v)
    }
}
