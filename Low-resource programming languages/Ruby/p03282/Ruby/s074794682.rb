s = gets
k = gets.to_i

n = 0
while s[n] == "1"
  n += 1
end

#nは1が何文字続くか
if n == 0
  puts s[0]
else
  one = "1"
  other = s[n]
  if k <= n
    puts "1"
  else
    puts other
  end
end