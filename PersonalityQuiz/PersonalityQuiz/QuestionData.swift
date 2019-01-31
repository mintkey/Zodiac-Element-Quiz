//
//  File.swift
//  PersonalityQuiz
//
//  Created by Helen Dempsey on 1/11/19.
//  Copyright © 2019 Helen Dempsey. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: ElementType
}

enum ElementType: Character {
    case fire = "🔥", earth = "🌱", water = "💧", air = "💨"
    
    var definition: String {
        switch self {
        case .fire:
            return """
            Signs: Aries, Leo, Sagittarius
            Extroverted, daring, creative, and inspirational, fire signs know how to have fun. They have a soft spot for friends and have a passion fiery like their sign. They grow self-conscious easily because they want to present their best self to people, and can often come off as pushy because they want to help their friends. However, fire signs are very expressive and open, so they will always be honest about their thoughts.
            """
        case .earth:
            return """
            Signs: Taurus, Virgo, Capricorn
            Earth signs are the epitome of logic, reasoning, and rationale. They like to think thoroughly before making a decision or setting plans. This, along with their results-oriented perspective, earth signs tend to be perfectionists. They may not have too many close friends, but those who are fortunate enough to be considered close to an earth sign can be guaranteed the utmost loyalty. Those who may not know an earth sign well may mistake them for being selfish or controlling, and at times this may be true, but that’s what makes them great leaders.
            """
        case .water:
            return """
            Signs: Cancer, Scorpio, Pisces
            Water signs are notoriously known for being the most emotional and intense signs. Because of their deep emotional pool, they are sensitive to every little thing around them. On the other hand, being in touch with their emotions means that they are empathetic and understanding towards others, and may give more chances than other signs usually would. Water signs are also very secretive about themselves because they have a hard time trusting people, though, so they may have to learn how to be more open with their heart. Those that they do open their heart to, though, should know that they are very authentic and can be a great support system.
            """
        case .air:
            return """
            Signs: Aquarius, Gemini, Libra
            Curious, independent, observant, and talkative, air signs are always seeking new information, even if they already have an amount equivalent to a bookshelf. They are great storytellers, which is why so many poets and rappers share this sign. Air people always heavily analyze so that they know a matter from front to back, and share in the earth sign that they think rationally with their head. Where air and earth diverge, however, is that air signs can easily come off as detached and elusive. Nonetheless, around others, they are fun, witty, and adventurous. In the same way they seek new information, they are seek new experiences whenever they can.
            """
        }
    }
}
