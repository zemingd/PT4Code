re = /(dreamer|eraser|dream|erase)\z/
s = gets.strip
while re =~ s
  i = $1.size
  s[-i, i] = ''
end
puts(s === '' ? 'YES' : 'NO')
