//
//  StartCoordinator.swift
//  CustomButton
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 25/10/20.
//

import UIKit

class StartCoordinator: Coordinator {

    var startViewModel: StartViewModel?
    var view: StartVC?
    var navigation: UINavigationController?
    

    
    init() {
        view = StartVC.instantiate()
        startViewModel = StartViewModel(coordinator: self)
        view?.viewModel = startViewModel
        
    }
    
    
    
    
}
