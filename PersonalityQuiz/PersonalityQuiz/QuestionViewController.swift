//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Helen Dempsey on 12/28/18.
//  Copyright © 2018 Helen Dempsey. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questions: [Question] = [
        Question(text: "What is your favorite season?",
            type: .single,
            answers: [
                Answer(text: "Summer", type: .fire),
                Answer(text: "Autumn", type: .earth),
                Answer(text: "Winter", type: .water),
                Answer(text: "Spring", type: .air)
            ]),
        Question(text: "Which quality best describes yourself?",
            type: .single,
            answers: [
                Answer(text: "Outgoing", type: .fire),
                Answer(text: "Loyal", type: .earth),
                Answer(text: "Intuitive", type: .water),
                Answer(text: "Witty", type: .air)
            ]),
        Question(text: "How much do you like traveling?",
            type: .ranged,
            answers: [
                Answer(text: "Not at all", type: .earth),
                Answer(text: "A little", type: .water),
                Answer(text: "Often", type: .air),
                Answer(text: "All the time", type: .fire)
            ]),
        Question(text: "Which place makes you feel most at peace?",
            type: .single,
            answers: [
                Answer(text: "Beach", type: .fire),
                Answer(text: "Forest", type: .earth),
                Answer(text: "Home", type: .water),
                Answer(text: "Mountaintop", type: .air)
            ]),
        Question(text: "What kind of pet do you want to have?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Dog", type: .fire),
                    Answer(text: "Rabbit", type: .earth),
                    Answer(text: "Cat", type: .water),
                    Answer(text: "Hamster", type: .air)
            ]),
        Question(text: "Do you often make impulsive decisions?",
            type: .ranged,
            answers: [
                Answer(text: "Never", type: .earth),
                Answer(text: "Once in a while", type: .air),
                Answer(text: "Sometimes", type: .water),
                Answer(text: "Very often", type: .fire)
            ]),
        Question(text: "Whicb element is your best friend?",
            type: .single,
            answers: [
                Answer(text: "Air", type: . fire),
                Answer(text: "Water", type: .earth),
                Answer(text: "Earth", type: .water),
                Answer(text: "Fire", type: .air)
            ]),
        Question(text: "Which is your favorite type of animal?",
                 type: .single,
                 answers: [
                    Answer(text: "Mammal", type: .fire),
                    Answer(text: "Reptile", type: .earth),
                    Answer(text: "Fish", type: .water),
                    Answer(text: "Bird", type: .air)
            ]),
        Question(text: "When you're walking with a group of friends, where do you usually walk?",
                 type: .ranged,
                 answers: [
                    Answer(text: "In the front", type: .fire),
                    Answer(text: "In the center", type: .earth),
                    Answer(text: "At the side", type: .water),
                    Answer(text: "Hang at the back", type: .air)
            ]),
        Question(text: "What color are you most drawn to?",
                 type: .single,
                 answers: [
                    Answer(text: "Pink", type: .fire),
                    Answer(text: "Orange", type: .earth),
                    Answer(text: "Green", type: .water),
                    Answer(text: "Yellow", type: .air)
            ]),
        Question(text: "What is something you wish you had more of?",
            type: .multiple,
            answers: [
                Answer(text: "Humility", type: .fire),
                Answer(text: "Generosity", type: .earth),
                Answer(text: "Security", type: .water),
                Answer(text: "Rationale", type: .air)
            ]),
        Question(text: "What do you do to relax?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Light a candle", type: .fire),
                    Answer(text: "Go shopping", type: .earth),
                    Answer(text: "Draw a bath", type: .water),
                    Answer(text: "Read a book", type: .air)
            ]),
        Question(text: "Do you like breaking the rules?",
                 type: .ranged,
                 answers: [
                    Answer(text: "All the time", type: .fire),
                    Answer(text: "I do when I feel like it", type: .earth),
                    Answer(text: "I break them, but I don't like it", type: .water),
                    Answer(text: "I'm a stickler", type: .air)
            ]),
        Question(text: "What career path appeals most to you?",
            type: .single,
            answers: [
                Answer(text: "Education", type: .fire),
                Answer(text: "Business", type: .earth),
                Answer(text: "Art", type: .water),
                Answer(text: "Research", type: .air)
            ]),
        Question(text: "Pick one:",
            type: .single,
            answers: [
                Answer(text: "Health", type: .fire),
                Answer(text: "Success", type: .earth),
                Answer(text: "Happiness", type: .water),
                Answer(text: "Wealth", type: .air)
                    ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextQuestion()
    }
    
    @IBAction func multiAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
    }
    
    @IBAction func rangedAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }

    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5, animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
