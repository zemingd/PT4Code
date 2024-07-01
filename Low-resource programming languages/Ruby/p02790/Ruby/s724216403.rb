a,b = gets.chomp.split(" ").map(&:to_i)
answer = ""


if a >= b
  (1..a).each do
    answer += b.to_s
  end
else
  (1..b).each do
    answer += a.to_s
  end
end

puts answer



