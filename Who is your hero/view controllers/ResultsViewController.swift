//
//  ResultsViewController.swift
//  Who is your hero
//
//  Created by Vladimir on 06.11.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var descriptionResultLabel: UILabel!

    let answers:[Answer]
    init? (coder: NSCoder,_ answers:[Answer]){
        self.answers = answers
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError(" \(#line) \(#function) init(coder:) has not been implemented")
    }
    func calculateResult() {
        let frequencyOfAnswers = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted {$0.value > $1.value }.first!.key
        updateUI(with: mostCommonAnswer)
}
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#line, answers)
        calculateResult()
    }
        func updateUI(with hero: HeroType){
            resultLabel.text = "Наверно это ..."
            resultImage.image = hero.image
            descriptionResultLabel.text = hero.descriptionHero
        }
    }

