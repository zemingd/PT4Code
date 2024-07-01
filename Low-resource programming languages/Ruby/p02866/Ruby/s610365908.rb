# frozen_string_literal: true

MOD = 998244353
n = gets.to_i
d = gets.split.map(&:to_i)

unless d[0].zero?
  puts 0
  exit
end
h = Array.new(n) { 0 }
d.each do |i|
  h[i] += 1
end
if h[0] != 1
  puts 0
  exit
end
sum = 1
flag = false
1.upto(n - 1) do |i|
  if h[i].zero? && !flag
    flag = true
    next
  end
  if flag
    unless h[i].zero?
      puts 0
      exit
    end
  else
    sum *= h[i - 1]**h[i]
    sum %= MOD
  end
end

puts sum % MOD
