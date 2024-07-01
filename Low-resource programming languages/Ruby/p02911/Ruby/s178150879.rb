input_lines = gets.chop.split.map(&:to_i)
answerArray = Array.new(input_lines[0], 0)

answerNum = 0 
input_lines[2].times do
    answerNum = gets.to_i
    answerArray[(answerNum-1)] = answerArray[(answerNum-1)]+1
end

notAnswerNum =  input_lines[1] - input_lines[2] 
for row in 0...input_lines[0]
    if notAnswerNum  + answerArray[row] > 0
        puts "Yes"
    else
        puts "NO"
    end
end