input_lines = gets.chop.split.map(&:to_i)
answerArray = []
answerArrayGet = []

answerNum = 0 
for answerInput in 0...input_lines[2]
  answerArrayGet.push(gets.chop.split.map(&:to_i)[0])
  answerArray.push(0)
end

for row in answerArrayGet
  answerArray[(row - 1)] = answerArray[(row - 1)]  + 1
end

notAnswerNum =  input_lines[1] - input_lines[2] 
for row in 0...input_lines[0]
    if notAnswerNum + answerArray[row] > 0
        puts "Yes"
    else
        puts "NO"
    end
end
