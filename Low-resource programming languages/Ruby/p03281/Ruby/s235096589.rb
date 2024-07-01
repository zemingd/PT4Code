n = gets.chomp.to_i
answer = 0
(1..n).each do |num|
  if num.even?
    next
  end
  dividor = 0
  (1..num).each do |num2|
    dividor += 1 if num % num2 == 0
  end
  answer += 1 if dividor == 8
end
puts answer