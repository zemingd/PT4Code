n = gets.chomp

k = n.chars.map(&:to_i).inject(:+)
n = n.to_i

puts n%k==0 ? "Yes" : "No"