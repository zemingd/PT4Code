n = gets.to_i

s = gets.chars
max = 0

(1...(s.size)).each do |i| 
  a, b = s[0...i].uniq, s[i..(s.size)].uniq
  
  count =  (a + b).count - (a - b).count - (b - a).count
  count /= 2
  max = [count, max].max
end

puts max