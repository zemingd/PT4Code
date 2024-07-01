S = STDIN.gets.chomp

set = ['dream', 'dreamer', 'erase', 'eraser']

# erasedream
#
len = S.size
current = 0
flg = true
S.reverse!

while len > current
  if S[current..current + 6] == 'remaerd'
    current += 7
  elsif S[current..current + 4] == 'maerd'
    current += 5
  elsif S[current..current + 5] == 'resare'
    current += 6
  elsif S[current..current + 4] == 'esare'
    current += 5
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