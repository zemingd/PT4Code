s = gets.strip.split('')
t = gets.strip.split('')

c = 0

(0..s.length-1).each do |i|
  c += 1 if s[i] == t[i]
end
puts c