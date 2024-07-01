n = gets.chomp.to_i
s = gets.chomp.split('')
#  ..##..#...#######.
count_b = 0
count_w = 0
flag = false
s.each do |c|
  if !flag
    if c == '#'
      count_b += 1
      flag = true
    end
  else
    if c == '#'
      count_b += 1
    else
      count_w += 1
    end
  end
end
flag = false
count_b2 = 0
count_w2 = 0
(n-1).downto(0) do |i|
  if !flag
    if s[i] == '#'
      count_b2 += 1
      flag = true
    else
      count_w2 += 1
    end
  else
    if s[i] == '#'
      count_b2 += 1
    else
      break
    end
  end
end
puts [count_w, count_b, count_b - count_b2 + count_w2].min
