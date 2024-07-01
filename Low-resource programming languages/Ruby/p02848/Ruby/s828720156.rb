A = ('A'..'Z').to_a
n = gets.chomp.to_i
s = gets.chomp
r = ''
s.chars.each do |c|
  r += A[(A.index(c) + n) % 26]
end

puts r
