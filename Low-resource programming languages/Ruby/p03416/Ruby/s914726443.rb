a, b = gets.chomp.split(" ").map(&:to_i)
result = 0
(a..b).each do |num1|
  ((num1)..b).each do |num2|
    result += 1 if num1.to_s.split("").reverse.join.to_i == num2
    print("#{num1}, #{num2}  ") if num1.to_s.split("").reverse.join.to_i == num2
  end
end
print("#{result}")