input_lines = gets.chop.split.map(&:to_i)
input_lines2 = gets.chop.split.map(&:to_i)

answerArray = [1]
for i in 1...input_lines[0]
    for iA in 0...answerArray.count
        puts input_lines2[(answerArray[answerArray.count - 1 -  iA] - 1)]
        if  input_lines2[i] > input_lines2[(answerArray[answerArray.count - 1 -  iA] - 1)]
            answerArray.insert((answerArray.count -  iA), i + 1)
            break
        end
    end
    if  answerArray.count < i + 1 
        answerArray.insert(0, i + 1)
    end

end

answerString = ""
for test in answerArray
    if answerString == ""
        answerString = String(test)
    else
        answerString = answerString + " " + String(test)
    end
end
puts answerString