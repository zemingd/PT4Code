S = STDIN.gets.chomp

set = ['dream', 'dreamer', 'erase', 'eraser']

# erasedream
#
len = S.size
current = 0
flg = true

while len > current
  if S[current] != 'd' && S[current] != 'e'
    flg = false
    break
  elsif S[current..current + 10] == 'dreameraser'
    current += 11
  elsif S[current..current + 9] == 'dreamerase'
    current += 10
  elsif S[current..current + 6] == 'dreamer'
    current += 7
  elsif S[current..current + 4] == 'dream'
    current += 5
  elsif S[current..current + 4] == 'erase'
    current += 5
  elsif S[current..current + 5] == 'eraser'
    current += 6
  else
    flg = false
    break
  end
end

if flg
  puts 'YES'
else
  puts 'NO'
end



