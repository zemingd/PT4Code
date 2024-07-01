n = gets.to_i
s = gets.strip.split("")
num= 0
0.upto(n-2) do |i|
  num+=1 if s[i]==s[i+1]
end
puts s.count-num
