a, b = gets.strip.split

square = (1..100).map { |n| n * n }
if a != "0"
  num = (a + b).to_i
else
  num = b.to_i
end
puts square.include?(num) ? "Yes" : "No"