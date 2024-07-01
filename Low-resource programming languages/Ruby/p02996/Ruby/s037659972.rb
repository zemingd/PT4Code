n = gets.to_i
a = Array.new(n).map{Array.new(2, 0)}
for i in 0..(n-1)
  a[i] = gets.split.map(&:to_i)
end
a.sort!{|s, t| s[1] <=> t[1]}
time = 0
flag = 1
for i in 0..(n-1)
  time += a[i][0]
  if time > a[i][1]
    flag = 0
    break
  end
end
if flag == 1
  puts "Yes"
else
  puts "No"
end