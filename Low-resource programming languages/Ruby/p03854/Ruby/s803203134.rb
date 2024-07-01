t=s=gets.chomp
loop do
  t=s.gsub(/(dream|dreamer|erase|eraser)$/, '')
  break if t==s
  s=t
end
puts t == '' ? 'YES' : 'NO'
