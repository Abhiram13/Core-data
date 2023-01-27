//
//  ViewController.swift
//  Core Data
//
//  Created by Abhiram Nagadi on 26/01/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let subView = UIView();
        
        view.addSubview(subView);
        
        subView.backgroundColor = .blue;
        subView.translatesAutoresizingMaskIntoConstraints = false;
        subView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true;
        subView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true;
        subView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true;
        subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true;
                
        let freeform = UIBezierPath();
        let caLayer = CAShapeLayer();
        
        freeform.move(to: CGPoint(x: 200, y: 200));
        freeform.addLine(to: CGPoint(x: 200, y: 400))
        freeform.addLine(to: CGPoint(x: 150, y: 400))
        freeform.addLine(to: CGPoint(x: 150, y: 200))
        
        caLayer.path = freeform.cgPath;
        caLayer.fillColor = UIColor.red.cgColor;
        
        subView.layer.addSublayer(caLayer);
    }
}
