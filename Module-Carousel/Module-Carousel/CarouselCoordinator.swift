//
//  CarouselCoordinator.swift
//  Module-Carousel
//
//  Created by Hiram Castro on 18/04/23.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

open class CarouselCoorinator: Coordinator {
    // 1
    var childCoordinators = [Coordinator]()
    
    // 2
    public var navigationController: UINavigationController
        
    // 3
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // 4
    public func start() {
        let controller = CarouselOnboarding()
        //controller.coordinator = self
        navigationController.pushViewController(controller, animated: true)
    }
}
