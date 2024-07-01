def include3?(x)
  if x % 10 == 3
    return true
  elsif x != 0
    return include3?(x / 10)
  else
    return false
  end
end
for i in 1..gets.to_i
  if i % 3 == 0 or include3?(i)
    print i.to_s + " "
  end
end
puts