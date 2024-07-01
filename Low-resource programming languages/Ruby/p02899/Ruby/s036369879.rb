input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)

answerArray = []
answerString = ""
for i in 0...input_lines[0]
    setNum = input_lines2.index(i + 1) + 1
    answerArray.push(setNum)
    if answerString == ""
        answerString = String(setNum)
    else
        answerString = answerString + " " + String(setNum)
    end
end
puts answerString
