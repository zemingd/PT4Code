n = gets.chomp.to_i
s = gets.chomp.split('')

for i in 0..(s.length - 1)
  if s[i].ord + n > 'Z'.ord
    s[i] = ('A'.ord + (s[i].ord + n) - 'Z'.ord).chr
  else
    s[i] = (s[i].ord + n).chr
  end
end

p s