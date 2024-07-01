s = gets.chomp.split('')

def kaibun?(s)
  if s.size == 1
    return true
  end
left = s.slice!(0..(((s.size) / 2) - 1))
mid = s.slice!(0) if (left.size + s.size).odd?
right = s

# p left
# p mid
# p right
left == right.reverse
end

if kaibun?(s.dup) && kaibun?(s.slice!(0..(((s.size) / 2) - 1)))
  s.slice!(0)
  if kaibun?(s)
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
