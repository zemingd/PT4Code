N = gets.to_i
S = gets.chomp

ans = 0

(0..(N - 2)).each do |i|
  s = S[0..i].chars
  t = S[(i + 1)..-1].chars

  d = (s & t).size
  ans = d if ans < d
end

puts ans
