input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)

answerArray = []
for i in 0...input_lines[0]
    answerArray.push(input_lines2.index(i + 1) + 1)
end

answerString = ""
for num in answerArray
    if answerString == ""
        answerString = String(num)
    else
        answerString = answerString + " " + String(num)
    end
end
puts answerString