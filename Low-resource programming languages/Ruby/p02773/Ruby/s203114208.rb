n = gets.to_i
s = Array.new(n)
for i in 0..(n-1)
  s[i] = gets.chomp
end

hs = Hash.new(0)
s.each{|st| hs[st] += 1}

max = 0
hs.each{|k,v| max = [max,v].max}

str = Array.new(0)
hs.each do |k,v|
  str.push(k) if v == max
end

str.sort!
str.each{|strs| puts strs}