//
//  HomePresenter.swift
//  ExVIPDataPassing
//
//  Created by AphiwitSCB on 1/9/2562 BE.
//  Copyright (c) 2562 OnceKB. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomePresentationLogic
{
  func presentShowText(response: Home.showText.Response)
    
}

class HomePresenter: HomePresentationLogic
{
    
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Do something
  
    func presentShowText(response: Home.showText.Response) {
        let showText = "Hello \(response.username)"
        
        let viewModel = Home.showText.ViewModel(usernameMessage: showText)
        viewController?.displayUsername(viewModel: viewModel)
    }
    
}
