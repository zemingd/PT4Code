N = gets.to_i
A = gets.split(" ").map(&:to_i)
count, ans = 0, 0
min = 10**9 + 7

A.each do |a|
    count += 1 if a < 0
    min = a.abs if min > a.abs
    ans += a.abs
end

if count % 2 == 0 
    puts ans
else
    puts ans - 2 * min
end
