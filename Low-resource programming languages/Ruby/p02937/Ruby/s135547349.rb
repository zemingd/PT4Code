s = gets.chomp
t = gets.chomp

s1 = s.chars.uniq
t1 = t.chars.uniq
unless (t1 - s1).empty?
  puts -1
  exit
end

is = 0
it = 0

until it >= t.length
  if s[is] == t[it]
    is += 1
    it += 1
  else
    is += 1
    s += s if is >= s.length
  end
end
puts is