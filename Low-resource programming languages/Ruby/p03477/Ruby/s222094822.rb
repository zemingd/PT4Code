n,a,b = gets.split.map(&:to_i)
answer = 0
(1..n).each do |i|
  sum = i.to_s.chars.map(&:to_i).inject(+:)
  answer += i if a <= sum && sum <= b
end
puts answer