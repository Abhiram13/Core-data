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
        let container = UIView();
        let centerLine = UIView();
        let leftAngleView = UIView();
        let rightAngleView = UIView();
        
        view.addSubview(container);
        container.addSubview(centerLine);
        container.addSubview(leftAngleView);
        container.addSubview(rightAngleView);
        
        container.backgroundColor = .green;
        container.translatesAutoresizingMaskIntoConstraints = false;
        container.widthAnchor.constraint(equalToConstant: 200).isActive = true;
        container.heightAnchor.constraint(equalToConstant: 200).isActive = true;
        container.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true;
        container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true;
        container.layer.cornerRadius = 100;
        
        centerLine.backgroundColor = .red;
        centerLine.translatesAutoresizingMaskIntoConstraints = false;
        centerLine.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.1).isActive = true;
        centerLine.heightAnchor.constraint(equalTo: container.heightAnchor, multiplier: 0.7).isActive = true;
        centerLine.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true;
        centerLine.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true;
        centerLine.layer.cornerRadius = 10;
        
        leftAngleView.backgroundColor = .red;
        leftAngleView.translatesAutoresizingMaskIntoConstraints = false;
        leftAngleView.widthAnchor.constraint(equalTo: centerLine.widthAnchor).isActive = true;
        leftAngleView.heightAnchor.constraint(equalTo: centerLine.heightAnchor, multiplier: 0.6).isActive = true;
        leftAngleView.centerXAnchor.constraint(equalTo: container.centerXAnchor, constant: -25).isActive = true;
        leftAngleView.topAnchor.constraint(equalTo: centerLine.topAnchor, constant: -8).isActive = true;
        leftAngleView.transform = CGAffineTransform(rotationAngle: 10.2);
        leftAngleView.layer.cornerRadius = 10;
        
        rightAngleView.backgroundColor = .red;
        rightAngleView.translatesAutoresizingMaskIntoConstraints = false;
        rightAngleView.widthAnchor.constraint(equalTo: centerLine.widthAnchor).isActive = true;
        rightAngleView.heightAnchor.constraint(equalTo: centerLine.heightAnchor, multiplier: 0.6).isActive = true;
        rightAngleView.centerXAnchor.constraint(equalTo: container.centerXAnchor, constant: 25).isActive = true;
        rightAngleView.topAnchor.constraint(equalTo: centerLine.topAnchor, constant: -8).isActive = true;
        rightAngleView.transform = CGAffineTransform(rotationAngle: -10.2);
        rightAngleView.layer.cornerRadius = 10;
    }
}
