s = gets.chomp
i = 0
l = 753
a = []
while i<s.size-2
  a << (s[i..i+2].to_i - l).abs
  i +=  1
end  
puts a.min