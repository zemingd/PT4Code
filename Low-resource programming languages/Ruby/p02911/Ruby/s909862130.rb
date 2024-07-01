input_lines = gets.chop.split.map(&:to_i)
answerArray = Array.new(input_lines[0], 0)

answerNum = 0 
input_lines[2].times do
    answerNum = gets.chop.split.map(&:to_i)[0]
    answerArray[(answerNum - 1)] = answerArray[(answerNum - 1)]  + 1
end

for row in 0...input_lines[0]
    if input_lines[1] - input_lines[2]  + answerArray[row] > 0
        puts "Yes"
    else
        puts "NO"
    end
end