gets
s = gets.chomp

ret = 0

(1..s.length-2).each do |i|
  l = s[0..i-1]
  r = s[i..-1]
  count = (l.chars.uniq & r.chars.uniq).count
  ret = count if ret < count
end

p ret