a = gets.to_i
b = gets.to_i

(1..3).each do |i|
  if i != a && i != b
    puts i
  end
end