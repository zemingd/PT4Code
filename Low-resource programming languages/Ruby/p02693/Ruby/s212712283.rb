k = gets.to_i
a, b = gets.split.map(&:to_i)
flag = 0
for i in a..b
  flag = 1 if i % k == 0
end
(flag == 1) ? (puts "OK"):(puts "NG")