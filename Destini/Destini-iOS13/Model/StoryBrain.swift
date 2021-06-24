//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Zion Tuiasoa on 11/18/2020.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryBrain {
    
    var currentStory = Story()
    
    private var storyNumber = 0
    private let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger.", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest!", choice1: "Open it", choice2: "Check for traps")
    ]
    
    init() {
        currentStory = stories[storyNumber]
    }
    
    func advanceToNextStory() {
        storyNumber += 1
        guard (storyNumber <= (stories.count - 1)) else {
            storyNumber = 0
            currentStory = stories[storyNumber]
            return
        }
        currentStory = stories[storyNumber]
    }
}


