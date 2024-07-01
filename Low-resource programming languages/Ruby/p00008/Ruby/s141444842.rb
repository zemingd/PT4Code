pattern = Array.new(51, 0)
num1 = num2 = num3 = num4 = 10
num1.times {|a| num2.times {|b| num3.times {|c| num4.times {|d| pattern[a+b+c+d] += 1}}}}

while sum = gets
  puts pattern[sum.to_i]
end