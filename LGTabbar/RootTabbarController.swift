//
//  RootTabbarController.swift
//  LGTabbar
//
//  Created by phiic on 16/11/21.
//  Copyright © 2016年 luogang. All rights reserved.
//

import UIKit

class RootTabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor=UIColor.orangeColor()
        
        
        addChildViewControllers()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
        private func addChildViewControllers() {
            addChildViewController(FirstViewController(), title: "首页", imageName: "shouye.png", selectedImageName: "shouye1.png")
            addChildViewController(SecondViewController(), title: "部门", imageName: "luru.png", selectedImageName: "luru1.png")
            addChildViewController(ThirdViewController(), title: "图表", imageName: "tubiao.png", selectedImageName: "tubiao1.png")
            addChildViewController(FourthViewController(), title: "我的", imageName: "wode.png", selectedImageName: "wode.png")
        }
        func addChildViewController(childController: UIViewController, title: String, imageName: String, selectedImageName: String) {
            childController.tabBarItem.image = UIImage(named: imageName)
            childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
            childController.title = title
            let nav = UINavigationController(rootViewController: childController)
            addChildViewController(nav)
        }
        

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

