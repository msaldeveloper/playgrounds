import UIKit


protocol ScoreAccesory {
    func string(for score : Int)->String
}
//La concretacion del ScoreAccesory
struct TitleAccesory: ScoreAccesory {
    func string(for score: Int) -> String {
        return "Score: "
    }
    
}

//otro tipo de concretacion de un decorator ScoreAccesory

struct PointAccesoty: ScoreAccesory {
    func string(for score: Int) -> String {
        if score == 1 {
            return "Point"
        }else {
            return "Points"
        }
    }
}

struct ScoreLabel {
    var prefix: ScoreAccesory?
    var suffix: ScoreAccesory?
    
    func printScore(score : Int){
        let start = prefix?.string(for: score) ?? ""
        let end = suffix?.string(for: score) ?? ""
        print("\(start) \(score) \(end)")
    }
}

var scoreLabel = ScoreLabel(prefix: TitleAccesory(), suffix: PointAccesoty())
scoreLabel.printScore(score: 2)
    
