s = gets.chomp.split('')
t = gets.chomp.split('')

if s.size < t.size
  flg = true
  _s = s.sort; _t = t.sort
  for i in 0..s.size-1 do
    flg = false unless _s[i] == _t[i]
  end
  if flg
    puts 'Yes'
    exit
  end
end

if s.size > t.size
  tmp = t
  t = s
  s = tmp
end

s.sort!; t.sort!; t.reverse!
flg2 = true
for j in 0..s.size-1 do
  if s[j] == t[j]
    if j == s.size-1
      flg2 = false
    else
      next
    end
  elsif s[j] < t[j]
    break
  else
    flg2 = false
    break
  end
end

if flg2
  puts 'Yes'
else
  puts 'No'
end
