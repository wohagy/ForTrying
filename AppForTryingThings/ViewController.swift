//
//  ViewController.swift
//  AppForTryingThings
//
//  Created by Macbook on 24.12.2021.
//

import UIKit

class ViewController: UIViewController {
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    private let greenViewPadding: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
   
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            // позиционирование зеленого вью внутри основной вью
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
//             позиционирование красной вью внутри зеленой
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -25),
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 25),
            redView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
            
            
        ])
        
    }
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
