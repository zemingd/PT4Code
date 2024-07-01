def judge(num)
  a = num / 10000
  b = num / 1000 % 10
  c = num / 10 % 10
  d = num % 10
  a == d && b == c
end

a, b = gets.split(' ').map(&:to_i)
ret = 0
(a..b).each do |num|
  ret += 1 if judge(num)
end
puts ret
