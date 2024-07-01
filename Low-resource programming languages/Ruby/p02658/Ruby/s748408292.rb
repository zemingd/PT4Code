N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

ans = A.inject(1){|a,b| a *= b}

if ans > 10 ** 18
  puts -1
else
  puts ans
end
