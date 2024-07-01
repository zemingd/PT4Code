N = gets.to_i
A = gets.split(" ").map(&:to_i)
ans = 1
flag = true
N.times do |i|
    ans *= A[i]
end

if ans > 10**18
    flag = false
end

if flag == true 
    puts ans
else
    puts -1
end