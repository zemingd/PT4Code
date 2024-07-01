n = gets.to_i
s = Array.new(n) { gets.to_i }.sort!
d = s.inject(:+)
if d % 10 != 0
  puts d
else
  iv = s.find {|x| x % 10 != 0 }
  puts (iv.nil?)? "0" : d - iv
end