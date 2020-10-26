//
//  StartViewModel.swift
//  CustomButton
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 25/10/20.
//

import UIKit

class StartViewModel: BaseViewModel {
    
    var childCoordinator: StartCoordinator
    
    init(coordinator: StartCoordinator) {
        self.childCoordinator = coordinator
    }
    
}
