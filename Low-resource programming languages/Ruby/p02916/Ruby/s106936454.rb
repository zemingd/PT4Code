n = gets.chomp.to_i

a_s = gets.chomp.split.map{|a| a.to_i - 1}
b_s = gets.chomp.split.map(&:to_i)
c_s = gets.chomp.split.map(&:to_i)

points = 0
a_s.each_with_index do |a, i|
  points += b_s[a]
  if i > 0 && a_s[i-1]+1 == a
    points += c_s[a_s[i-1]]
  end
end

puts points
