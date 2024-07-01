n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

cnt = 0
a.sort!
a.each_with_index{|t, i|
  if t <= x
    if i == a.size-1
      break if t != x
    end
    x -= t
    cnt += 1
  else
    break
  end
}

puts cnt

