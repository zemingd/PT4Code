s = gets().chomp

is_strong = true

is_strong = false unless s == s.reverse
  
s1 = s[0, ((s.length - 1) /2)]
is_strong = false unless s1 == s1.reverse

offset = ((s.length + 3) / 2)
s2 = s[offset, s.length - offset + 1]
is_strong = false unless s2 == s2.reverse

puts is_strong ? 'Yes' : 'No'