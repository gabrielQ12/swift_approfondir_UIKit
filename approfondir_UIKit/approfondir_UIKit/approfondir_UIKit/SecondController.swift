//
//  SecondController.swift
//  approfondir_UIKit
//
//  Created by Gaby on 16/01/2024.
//

import UIKit

class SecondController: UIViewController {
    
    
    @IBOutlet weak var suppBtn: UIBarButtonItem!
    
    // Avancer une vue
    
    // Reculer une vue
    
    var v: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second view")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createView()
        listerLesViews()
    }
    
    func createView() {
        //X
        let x: CGFloat = 0
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
        v = UIView(frame: rect)
        v.backgroundColor = .systemMint
        v.isUserInteractionEnabled = true
        v.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(arrangeSub)))
        
        
        let frame = self.view.frame
        let redView = UIView(
            frame: CGRect(
            x: 20,
            y: 0,
            width: frame.width - 40,
            height: frame.height )
        )
        redView.backgroundColor = .red
        self.view.addSubview(redView)
        
        let third = UIView(frame: CGRect(x: 10, y: 10, width:64, height: 64))
        third.backgroundColor = .white
        redView.addSubview(third)
        self.view.addSubview(v)
    }
    
      @objc func arrangeSub() {
          // En avant
          //self.view.bringSubviewToFront(v)
          // En arriere
          //self.view.sendSubviewToBack(v)
          
          // Voir la premiere Sub view
          for index in 0..<self.view.subviews.count {
              let newView = self.view.subviews[index]
              print("Index : \(index) ==> \(newView == v)")
              if index == 0 {
                  let isV = newView == v
                  isV ? self.view.bringSubviewToFront(v)
                  : self.view.sendSubviewToBack(v)
              }
          }
        }
    
    func listerLesViews() {
        for subView in self.view.subviews {
            print(subView.frame)
            if subView.subviews.count > 0 {
                print("On a une autre vue a linterieur")
            }
        }
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        for subView in self.view.subviews {
            subView.removeFromSuperview()
        }
    }
}
