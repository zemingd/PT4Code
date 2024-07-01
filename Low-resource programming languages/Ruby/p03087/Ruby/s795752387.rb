input = gets.chomp
input = input.split(' ')
N = input[0].to_i
Q = input[1].to_i
S = gets.chomp
answer = []

for i in 0..Q - 1 do
  input_ques = gets.chomp
  ques_first = input_ques[0].to_i
  ques_last = input_ques[2].to_i
  
  count = 0
  for i in ques_first - 1..ques_last - 2 do # "-2"は最後の"A"を無視するため
    if S[i] == 'A' && S[i + 1] == 'C'
      count += 1
    end
  end
  answer << count
end

puts answer