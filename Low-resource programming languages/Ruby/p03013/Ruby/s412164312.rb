num = gets.chomp.split().map(&:to_i) 
bs = num[1].times.map { gets.chomp.to_i }
MOD = 10**9 + 7

num1, num2, s = 0, 1, 0
(num[0]).times do |n|
  s = bs.include?(n+1) ? 0 : num1 + num2
  num1 = num2
  num2 = s 
end

puts s % MOD
