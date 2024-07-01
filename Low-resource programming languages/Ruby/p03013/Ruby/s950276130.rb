num = gets.chomp.split().map(&:to_i) 
MOD = 10**9 + 7
bs = Array.new(num[0]+1, 0)
num[1].times do |n|
  a = gets.chomp.to_i
  bs[a] = -1
end

num1, num2, s = 0, 1, 0
(num[0]).times do |n|
  s = bs[n+1] < 0 ? 0 : num1 + num2
  num1 = num2
  num2 = s % MOD
end

puts s 