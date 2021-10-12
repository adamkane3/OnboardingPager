//
//  OnboardingPageViewController.swift
//  UAndI
//
//  Created by Adam Kane on 01/10/2021.
//

import Foundation
import UIKit

class OnboardingPageViewController: UIPageViewController {
    
    private var pageIntro = ["First step", "Second step! Almost done", "Final step, all done"]
    private var pageImages = ["step1Image", "step2Image", "step3Image"]
    var currentPageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func contentViewController(at index: Int) -> OnboardingContentViewController? {
        if index < 0 || index >= pageIntro.count {
            return nil
        }
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let pageContentViewController = storyboard.instantiateViewController(withIdentifier: "OnboardingContentViewController") as? OnboardingContentViewController {
            pageContentViewController.intro = pageIntro[index]
            pageContentViewController.imageName = pageImages[index]
            pageContentViewController.index = index
            return pageContentViewController
        }
        return nil
    }
    
    func nextPage() {
        currentPageIndex += 1
        if let nextViewController = contentViewController(at: currentPageIndex) {
            setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
        }
    }
}
