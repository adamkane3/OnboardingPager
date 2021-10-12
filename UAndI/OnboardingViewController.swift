//
//  OnboardingViewController.swift
//  UAndI
//
//  Created by Adam Kane on 01/10/2021.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if let index = onboardingPageViewController?.currentPageIndex {
            switch index {
            case 0...1:
                onboardingPageViewController?.nextPage()
            case 2:
                dismiss(animated: true, completion: nil)
            default:
                break
            }
            pageControl.currentPage = index + 1
        }
    }
    
    var onboardingPageViewController: OnboardingPageViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? OnboardingPageViewController {
            onboardingPageViewController = pageViewController
        }
    }
    
}
