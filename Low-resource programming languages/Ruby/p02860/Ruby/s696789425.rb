N = gets.to_i
S = gets

is_warikireru = N % 2 == 0
puts "No" unless is_warikireru

tn = N / 2
t = S.slice(0, tn)
s = t + t

if s.eql?(S)
  puts "Yes"
else
  puts "No" if is_warikireru
end