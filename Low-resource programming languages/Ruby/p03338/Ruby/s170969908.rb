n = gets.to_i
s = gets.chomp.split("").map!{|i| i.to_s}
max = 0
s.length.times do |j|
  a = s[0..j]
  b = s[j+1..-1]
  c = (a&b).length
  if c > max 
    max = c
  end
end
puts max 
