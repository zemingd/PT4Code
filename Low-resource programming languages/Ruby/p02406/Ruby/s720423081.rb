answers = []
n = gets.chomp.to_i
for i in 1..n
  if i%3 == 0
    answers.push(i)
  elsif i%10 == 3
    answers.push(i)
  end
end
puts answers.join(' ')