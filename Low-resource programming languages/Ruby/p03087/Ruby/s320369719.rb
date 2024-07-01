n, q = gets.chomp.split(" ").map(&:to_i)
strings = gets.chomp.chars
questions = []
q.times do
  f, s = gets.chomp.split(" ").map(&:to_i)
  questions.push([f, s])
end
exists = []
answers = []
count = 0
strings.each_with_index do |string, index|
  if string == "A" && strings[index + 1] == "C"
    count += 1
  end
  exists.push(count)
end

questions.each do |question|
  if question[0] == 1
    answers.push(exists[question[1] - 2])  
  else
    answers.push(exists[question[1] - 2] - exists[question[0] - 2])
  end
end

puts answers