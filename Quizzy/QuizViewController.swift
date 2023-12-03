//
//  QuizViewController.swift
//  Quizzy
//
//  Created by PhyoWai Aung on 12/2/23.
//


import UIKit

class QuizViewController: UIViewController {
    
    var quizBrain = CategoryBrain()
    
    var stackView = UIStackView()
    
    var quizText : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .white
        return label
    }()
    
    let choice1: UIButton = UIButton.createChoiceButton(title: "")
    let choice2: UIButton = UIButton.createChoiceButton(title: "")
    let choice3: UIButton = UIButton.createChoiceButton(title: "")
    
    var progreesBar = UIProgressView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = quizBrain.getText()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        choice1.addTarget(self, action: #selector(addbuttonPressed), for: .touchUpInside)
        choice2.addTarget(self, action: #selector(addbuttonPressed), for: .touchUpInside)
        choice3.addTarget(self, action: #selector(addbuttonPressed), for: .touchUpInside)
        
        setUI()
        updateUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        stackView.frame = CGRect(x: view.left, y: view.top, width: view.width, height: view.height)
        
    }
    
    
    
    //Button Press Action For Chose Buttons
    @objc func addbuttonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else { return}
        let gotAnswer = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if gotAnswer {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        exitORrestart()
        
        quizBrain.nextQuestion()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        let getAnswers = quizBrain.getAnswers()
        
        choice1.setTitle(getAnswers[0], for: .normal)
        choice2.setTitle(getAnswers[1], for: .normal)
        choice3.setTitle(getAnswers[2], for: .normal)
        progreesBar.progress = quizBrain.getProgress()
        quizText.text = quizBrain.getQuizQuestion()
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
    }
    
    func setUI() {
        stackView = UIStackView(arrangedSubviews: [quizText, choice1, choice2, choice3, progreesBar])
        progreesBar.translatesAutoresizingMaskIntoConstraints = false
        progreesBar.tintColor = .gray
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = .black
        stackView.spacing = 8
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            
            choice1.heightAnchor.constraint(equalToConstant: 60),
            
            choice2.heightAnchor.constraint(equalToConstant: 60),
            choice2.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            choice3.heightAnchor.constraint(equalToConstant: 60),
            choice3.widthAnchor.constraint(equalTo: stackView.widthAnchor),

            progreesBar.heightAnchor.constraint(equalToConstant: 10)

        ])
    }
    
    func exitORrestart() {
        let count = quizBrain.continueOrExit()
        let totalScore = quizBrain.totalScore()
        if count {
            let vc = UIAlertController(title: "You got Score \(quizBrain.score)/\(totalScore)", message: "Do you want to retake or exit.", preferredStyle: .alert)
            vc.addAction(UIAlertAction(title: "Exit", style: .default, handler: { action in
                self.navigationController?.popViewController(animated: true)
            }))
            vc.addAction(UIAlertAction(title: "Retake", style: .default,handler: { action in
                self.quizBrain.quizQuestionNumber = 0
                self.quizBrain.score = 0
                self.updateUI()
            }))
            
            present(vc, animated: true)
        }
    }
}
