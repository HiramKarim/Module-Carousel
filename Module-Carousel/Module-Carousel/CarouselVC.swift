//
//  CarouselVC.swift
//  Module-Carousel
//
//  Created by Hiram Castro on 18/04/23.
//

import UIKit

final class CarouselOnboarding: UIViewController {
    
    private let presentationScrollView:UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .red
        scroll.automaticallyAdjustsScrollIndicatorInsets = false
        scroll.alwaysBounceHorizontal = true
        scroll.alwaysBounceVertical = false
        scroll.isDirectionalLockEnabled = true
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.backGroundColor
        
        configView()
    }
    
    private func configView() {
        self.view.addSubview(presentationScrollView)
        NSLayoutConstraint.activate([
            presentationScrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            presentationScrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            presentationScrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            presentationScrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
        presentationScrollView.contentSize = CGSize(width: presentationScrollView.contentSize.width, height: 0)
    }
    
}
