a, b, c = gets.chop.split.map(&:to_i)

cnt = 0

a.upto(b) do |i|
  cnt += 1 if c % i == 0
end

puts cnt