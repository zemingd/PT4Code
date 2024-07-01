n = gets.chomp.split('')

while n.length > 1
  if n.shift != n.pop
    print 'No'
    break
  end

  if n.length <= 1
    print 'Yes'
  end
end