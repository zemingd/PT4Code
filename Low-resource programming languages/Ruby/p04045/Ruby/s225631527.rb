n, K = gets.chomp.split(" ").map(&:to_i)
D = gets.chomp.split(" ")

L = ('0'..'9').to_a - D
until n.to_s.chars.all?{|c| L.include?(c)} do
  n += 1
end

puts n
