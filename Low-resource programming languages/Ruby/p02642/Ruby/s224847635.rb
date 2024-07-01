n = gets.to_i
a = gets.split.map(&:to_i).sort!

ans = n

a.each_with_index do |x, i|
  if i == 0 
    if n > 1 && a[0] == a[1]
      ans -= 1
    end
    next
  end

  t = 1
  while t * t <= x do
    if x % t != 0
      t += 1
      next
    end

    bs = a[0..(i - 1)].bsearch { |y| x / t >= y }

    # p "#{bs}: #{x}"

    if bs.nil?
      t += 1
    elsif x % bs == 0
      ans -= 1
      break
    else
      t += 1
    end
  end
end

puts ans