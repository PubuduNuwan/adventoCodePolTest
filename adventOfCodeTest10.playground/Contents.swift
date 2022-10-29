import UIKit


let navigationString = "{([(<{}[<>[]}>{[]{[(<()> [[<[([]))<([[{}[[()]]] [{[{({}]{}}([{[{{{}}([] [<(<(<(<{}))><([]([]() <{([([[(<>()){}]>(<<{{"

var temArray : [Character] = []
var totalPoints = 0

for char in navigationString {
    
    switch String(char) {
    case "(","{","[","<":
        temArray.append(char)
    case ")" :
        if temArray.popLast() != "(" {totalPoints += 3}
    case "]" :
        if temArray.popLast() != "[" {totalPoints += 57}
    case "}" :
        if temArray.popLast() != "{" {totalPoints += 1197}
    case ">" :
        if temArray.popLast() != "<" {totalPoints += 25137}
    default:
        break
    }
}


print(totalPoints)

