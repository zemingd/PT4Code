n = gets.to_i
a = Array.new(n).map{Array.new(2, 0)}
for i in 0..(n-1)
  a[i] = gets.split.map(&:to_i)
end
a.sort!{|s, t| t[1] <=> s[1]}
time = a[0][1]
flag = 1
for i in 0..(n-1)
  if a[i][1] >= time && time >= a[i][0]
    time = a[i][1] if time > a[i][1]
    time -= a[i][0]
  else
    flag = 0
    break
  end
end
if flag == 1
  puts "Yes"
else
  puts "No"
end