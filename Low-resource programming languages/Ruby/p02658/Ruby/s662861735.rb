n = gets.to_i
numbers = gets.split.map(&:to_i)

answer = 1

if numbers.any?(&:zero?)
  answer = 0
else
  numbers.each do |number|
    answer *= number
    if answer > 10 ** 18
      answer = -1
      break
    end
  end
end

puts answer
