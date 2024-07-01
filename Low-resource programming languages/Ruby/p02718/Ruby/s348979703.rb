a = gets.chomp
n, m = a.split(" ")
b = gets.chomp
nums = b.split(" ")

sum = 0
nums.each {|num| sum += num.to_i}
min = sum / (4*m.to_i)
ans = 0;
nums.each do |num|
  ans += 1 if num.to_i >= min
end

if ans >= m.to_i
  p "Yes"
else
  p "No"
end