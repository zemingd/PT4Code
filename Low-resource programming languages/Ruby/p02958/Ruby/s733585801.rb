n = gets.to_i
p = gets.split.map(&:to_i)
i = 0
wn = 0
while i < n
  wn += 1 if p[i] != (i + 1)
  i += 1
end

if wn == 0 || wn == 2
  puts 'YES'
else
  puts 'NO'
end