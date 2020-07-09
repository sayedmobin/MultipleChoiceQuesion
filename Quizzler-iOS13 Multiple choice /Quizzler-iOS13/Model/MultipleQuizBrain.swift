
import Foundation

struct MultipleQuizBrain {
    let quiz = [
        MultipleChoiceQuestion(q: "Which is the largest organ in the human body?", a: "Skin", c: ["Heart", "Skin", "Large Intestine"]),
        MultipleChoiceQuestion(q: "Five dollars is worth how many nickels?", a: "100", c: ["25", "50", "100"]),
        MultipleChoiceQuestion(q: "What do the letters in the GMT time zone stand for?", a: "Greenwich Mean Time", c: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"]),
        MultipleChoiceQuestion(q: "What is the French word for 'hat'?", a: "Chapeau", c: ["Chapeau", "Écharpe", "Bonnet"]),
        MultipleChoiceQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: "Watch", c: ["Notebook", "Handkerchief", "Watch"]),
        MultipleChoiceQuestion(q: "How would one say goodbye in Spanish?", a: "Adiós", c: ["Au Revoir", "Adiós", "Salir"]),
        MultipleChoiceQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: "Orange", c: ["Green", "Orange", "Blue"]),
        MultipleChoiceQuestion(q: "What alcoholic drink is made from molasses?", a: "Rum", c: ["Rum", "Whisky", "Gin"]),
        MultipleChoiceQuestion(q: "What type of animal was Harambe?", a: "Gorilla", c: ["Panda", "Gorilla", "Crocodile"]),
        MultipleChoiceQuestion(q: "Where is Tasmania located?", a: "Australia", c: ["Indonesia", "Australia", "Scotland"])

    ]
    
    var score = 0
    
    var questionNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }
        else {
            return false
        }
        
    }
    
    func getQuestionText() -> String {
        let question = quiz[questionNumber].text
        return question
    }
    
    func getProgress() -> Float {
        let questionCount = quiz.count
        let myProgress = (Float(questionNumber + 1) / Float(questionCount))
        return myProgress
        
    }
    
    mutating func nextQuestion() {
        let questionCount = quiz.count
        if questionNumber + 1  < questionCount {
            questionNumber += 1
            
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
       return score
        
    }
    
    mutating func getOption(_ buttons: Int) -> String {
       return quiz[questionNumber].choice[buttons]
        
    }
}
