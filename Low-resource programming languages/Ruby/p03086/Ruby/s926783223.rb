s = gets.chomp

ans = 0
max = 0

s.each_char do |c|
  max = %w[A C G T].include?(c) ? max + 1 : 0
  ans = max if max >= ans
end

puts ans
