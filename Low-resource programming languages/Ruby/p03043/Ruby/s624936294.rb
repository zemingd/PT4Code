a, b = gets.split(" ").map(&:to_i)
result = 0.to_f

(1..a).each do |i|
  if i >= b
    result += 1.fdiv(a)
  else
    num = Math.log(b.fdiv(i), 2).ceil
    result += (0.5 ** num) * 1.fdiv(a)
  end
end

puts result