input = STDIN.gets.chomp
 puts input
cases = ['', '']
(0...input.size).each do |n|
  if n % 2 == 0
    cases[0] << '0'
  else
    cases[0] << '1'
  end
end

(0...input.size).each do |n|
    if n % 2 != 0
      cases[0] << '0'
    else
      cases[0] << '1'
    end
end
 
answer = []
 
cases.each_with_index do |testcase, answer_i|
  answer[answer_i] = 0
  input.chars.each_with_index do |s, i|
    answer[answer_i] += 1 if input[i] != testcase[i]
  end
end
puts answer.min