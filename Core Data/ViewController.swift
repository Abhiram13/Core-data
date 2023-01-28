//
//  ViewController.swift
//  Core Data
//
//  Created by Abhiram Nagadi on 26/01/23.
//

import UIKit

struct ArrowProperties {
    let color: UIColor;
    let circleColor: UIColor;
    let width: CGFloat;
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let properties: ArrowProperties = ArrowProperties(color: .red, circleColor: .blue, width: 30);
        let arrow = Arrow(property: properties);
        view.addSubview(arrow);
    }
}

class Arrow: UIView {
    let properties: ArrowProperties;
    
    required init?(coder: NSCoder) {
        self.properties = ArrowProperties(color: .red, circleColor: .green, width: 200);
        super.init(coder: coder);
    }
    
    init(property: ArrowProperties) {
        self.properties = property;
        super.init(frame: .zero);
    }
    
    override func didMoveToSuperview() {
        self.initialise();
    }
    
    private func initialise() {
        let centerLine = UIView();
        let leftAngleView = UIView();
        let rightAngleView = UIView();
        
        addSubview(centerLine);
        addSubview(leftAngleView);
        addSubview(rightAngleView);
        
        backgroundColor = properties.circleColor;
        translatesAutoresizingMaskIntoConstraints = false;
        widthAnchor.constraint(equalToConstant: properties.width).isActive = true;
        heightAnchor.constraint(equalToConstant: properties.width).isActive = true;
        topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true;
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor, constant: 40).isActive = true;
        layer.cornerRadius = properties.width / 2;
        
        centerLine.backgroundColor = properties.color;
        centerLine.translatesAutoresizingMaskIntoConstraints = false;
        centerLine.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1).isActive = true;
        centerLine.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7).isActive = true;
        centerLine.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true;
        centerLine.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true;
        centerLine.layer.cornerRadius = properties.width * 0.05;
        
        leftAngleView.backgroundColor = properties.color;
        leftAngleView.translatesAutoresizingMaskIntoConstraints = false;
        leftAngleView.widthAnchor.constraint(equalTo: centerLine.widthAnchor).isActive = true;
        leftAngleView.heightAnchor.constraint(equalTo: centerLine.heightAnchor, multiplier: 0.6).isActive = true;
        leftAngleView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -(properties.width * 0.13)).isActive = true;
        leftAngleView.topAnchor.constraint(equalTo: centerLine.topAnchor, constant: -(properties.width * 0.04)).isActive = true;
        leftAngleView.transform = CGAffineTransform(rotationAngle: 10.2);
        leftAngleView.layer.cornerRadius = properties.width * 0.05;
        
        rightAngleView.backgroundColor = properties.color;
        rightAngleView.translatesAutoresizingMaskIntoConstraints = false;
        rightAngleView.widthAnchor.constraint(equalTo: centerLine.widthAnchor).isActive = true;
        rightAngleView.heightAnchor.constraint(equalTo: centerLine.heightAnchor, multiplier: 0.6).isActive = true;
        rightAngleView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: (properties.width * 0.13)).isActive = true;
        rightAngleView.topAnchor.constraint(equalTo: centerLine.topAnchor, constant: -(properties.width * 0.04)).isActive = true;
        rightAngleView.transform = CGAffineTransform(rotationAngle: -10.2);
        rightAngleView.layer.cornerRadius = properties.width * 0.05;
    }
}
