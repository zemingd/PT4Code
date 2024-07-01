n, m = gets.chomp.split(" ").map(&:to_i)
answers = []
n.times do
  answers.push(gets.chomp.split(" ").map(&:to_i))
end

answers.each do |answer|
  answer.shift
end

# puts answers

answers[1..answers.length - 1].each_with_index do |answer, index|
  answers[0].delete_if do |str|
    !answer.include?(str)
  end
end

puts answers[0].length