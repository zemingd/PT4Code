gets
a = gets.strip.split(" ").map(&:to_i)

ans = 0
a.each do |e|
  ans += e - 1
end

puts ans
