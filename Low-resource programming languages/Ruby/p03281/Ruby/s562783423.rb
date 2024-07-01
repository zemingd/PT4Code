n = gets.chomp.to_i
array = []
count = 0
(1..n).each do |num1|
  (1..n).each do |num2|
    if num1 % num2 == 0
      count += 1
    end
  end
  if count == 8
    array.push(num1)
  end
  count = 0
end

ans = 0
array.each do |num3|
  if num3 % 2 == 1
    ans += 1
  end
end
puts ans
