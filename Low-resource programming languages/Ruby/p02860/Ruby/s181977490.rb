N = gets.to_i
S = gets

tn = N / 2
t = S.slice(0, tn)
s = t + t

if s.eql?(S)
  puts "Yes"
else
  puts "No"
end