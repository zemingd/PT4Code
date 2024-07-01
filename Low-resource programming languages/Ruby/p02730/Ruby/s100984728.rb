s = gets.chomp.split('')

def kaibun?(s)
left = s.slice!(0..(((s.size - 1) / 2) - 1))
mid = s.slice!(0)
right = s

# p left
# p mid
# p right
left == right.reverse
end

if kaibun?(s.dup) && kaibun?(s.slice!(0..(((s.size - 1) / 2) - 1)))
  s.slice!(0)
  if kaibun?(s)
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
