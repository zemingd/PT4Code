n = gets.to_i
data = Array.new
sum = 0
n.times do
  r = gets.to_i
  data << r
  sum += r
end
result = sum
if sum % 10 == 0
  data.sort!
  data.each do |item|
    if item % 10 != 0
      result -= item
      break
    end
  end
  if result == sum
    result = 0
  end
end
puts result