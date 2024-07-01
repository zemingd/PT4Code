a = gets.to_i
b = a.to_s.chomp.split("").map(&:to_i)
n = 0
b.each do|i|
  n += i
end
if a % n == 0 then
  ans = "Yes"
else
  ans = "No"
end
puts ans
