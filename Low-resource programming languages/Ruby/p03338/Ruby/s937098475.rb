n = gets.chomp.to_i
s = gets.chomp.split("")
ans = 0
1.upto(n-1) do |i|
    tmp = (s.slice(0,i) & s.slice(i,n-i)).size
    ans = tmp if tmp > ans
end

puts ans