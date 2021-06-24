//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Zion Tuiasoa on 11/18/2020.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.currentStory.title
        choice1Button.setTitle(storyBrain.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyBrain.currentStory.choice2, for: .normal)
    }
    
    @IBAction func choice1Tapped(_ sender: Any) {
        storyBrain.advanceToNextStory()
        updateUI()
    }
    
    @IBAction func choice2Tapped(_ sender: Any) {
        storyBrain.advanceToNextStory()
        updateUI()
    }
}
