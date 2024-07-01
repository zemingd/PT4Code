input = STDIN.gets.chomp
 
cases = ['', '']
(0..input.size).each do |n|
  cases[0] << n % 2 == 0 ? '0' : '1'
end
(0..input.size).each do |n|
  cases[1] << n % 2 != 0 ? '0' : '1'
end
 
answer = []
 
cases.each_with_index do |testcase, answer_i|
  answer[answer_i] = 0
  input.chars.each_with_index do |s, i|
    answer[answer_i] += 1 if input[i] != testcase[i]
  end
end
  
puts answer.min