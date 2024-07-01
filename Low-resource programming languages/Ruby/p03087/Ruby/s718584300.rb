n, q = gets.chomp.split(" ").map(&:to_i)
strings = gets.chomp.chars
questions = []
q.times do
  f, s = gets.chomp.split(" ").map(&:to_i)
  questions.push([f, s])
end
exists = []
answers = []
strings.each_with_index do |string, index|
  if string == "A" && strings[index + 1] == "C"
    exists.push(1)
  else
    exists.push(0)
  end
end

questions.each do |question|
  answers.push(exists[question[0] - 1..question[1] - 2].select{ |n| n  == 1 }.length)
end
puts answers