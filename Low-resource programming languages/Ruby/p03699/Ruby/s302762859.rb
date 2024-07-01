n = gets.chomp.to_i
score = []
n.times do
  score << gets.chomp.to_i
end

sum = []
n.times do |i|
  sum << score.combination(i+1).collect{|s| s.inject(&:+)}.select{|s| s%10!=0}.flatten
end

ans = sum.flatten.max
puts (ans.nil?) ? "0" : ans