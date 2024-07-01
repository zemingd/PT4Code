n = gets.chomp.to_i
s = []
n.times do |i|
  s[i] = gets.chomp.split("").sort.join
end

s.sort!

ans = 0
ptr = 0
n.times do |i|
  if s[ptr] != s[i]
    len = (i-1) - ptr
    ans += ((len+1)*len)/2
    ptr = i
  end
end
len = (n-1) - ptr
ans += ((len+1)*len)/2

puts(ans)