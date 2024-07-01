n = gets.to_i
a = gets.split.map(&:to_i)
ans =1 
(1..n).each do |i|
    ans *= a[i-1]
end

if ans > 1000000000000000000
    puts -1
else
    puts ans
end
