
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var choiceC: UIButton!
    
    var multipleQuizBrain = MultipleQuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = multipleQuizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
            
        }
        
        multipleQuizBrain.nextQuestion()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil , repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = multipleQuizBrain.getQuestionText()
        choiceA.setTitle(multipleQuizBrain.getOption(0), for: .normal)
        choiceB.setTitle(multipleQuizBrain.getOption(1), for: .normal)
        choiceC.setTitle(multipleQuizBrain.getOption(2), for: .normal)
        
        progressBar.setProgress(multipleQuizBrain.getProgress(), animated: true)
        scoreLabel.text = "Score: \(multipleQuizBrain.getScore())"
        choiceA.backgroundColor = UIColor.clear
        choiceB.backgroundColor = UIColor.clear
        choiceC.backgroundColor = UIColor.clear
        
    }
    
}






