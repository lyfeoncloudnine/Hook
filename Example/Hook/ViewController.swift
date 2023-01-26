//
//  ViewController.swift
//  Hook
//
//  Created by lyfeoncloudnine on 01/26/2023.
//  Copyright (c) 2023 lyfeoncloudnine. All rights reserved.
//

import UIKit

import Hook

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let bottomTrailingView = UIView()
        bottomTrailingView.backgroundColor = .blue
        
        // Hook helper
        view.addSubviews(yellowView, stackView, bottomTrailingView)
        stackView.addArrangedSubviews(greenView, redView)
        
        // Hook all side
        yellowView.hook.all(to: view, useSafeArea: false)
        
        // Hook top, leading, trailing
        stackView.hook
            .top(equalTo: yellowView.safeAreaLayoutGuide.topAnchor, constant: 20)
            .leading(equalTo: yellowView.leadingAnchor)
            .trailing(equalTo: yellowView.trailingAnchor)
        
        // Hook trailing, bottom, width, height
        bottomTrailingView.hook
            .trailing(equalTo: view.trailingAnchor)
            .bottom(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            .width(equalTo: view.widthAnchor, multiplier: 0.5)
            .height(greaterThanOrEqualTo: redView.heightAnchor)
        
        // Hook height
        greenView.hook.height(equalToConstant: 200)
        
        // Hook height
        redView.hook.height(equalTo: greenView.heightAnchor)
    }
}

