s = gets.strip.split('')
f = s[0]
r = 'No'
s.each do |c|
  r = 'Yes' if f != c 
end
puts r
