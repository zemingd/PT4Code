n = gets.to_i
answers = []
(1..n).each do |i|
  next if i % 2 == 0
  count = 1
  (3..i).each do |j|
    next if j % 2 == 0
    count += 1 if i % j == 0
  end
  answers << i if count == 8
end

puts answers.count
