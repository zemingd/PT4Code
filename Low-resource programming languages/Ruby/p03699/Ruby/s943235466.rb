n = gets.chomp.to_i
score = []
n.times do
  score << gets.chomp.to_i
end

sum = score.inject(&:+)
valid = score.select{|s| s % 10 != 0}
puts valid.empty? ? "0" : (sum % 10 == 0) ? sum - valid.min : sum
