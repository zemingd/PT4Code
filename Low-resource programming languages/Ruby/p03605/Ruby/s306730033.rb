s = gets
i = s.split('').map(&:to_i)
c = ''
c = 'No'
c = []
2.times do |o|
  puts o
  if i[o] == 9
    c = 'Yes'
  else
    c = 'No'
  end
  if c == 'Yes'
    break
  end
end
puts c