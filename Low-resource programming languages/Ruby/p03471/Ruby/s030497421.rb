_, y = gets.split.map(&:to_i)
break_1000 = false
break_5000 = false

0.upto(y/10_000) do |i|
  0.upto(y/5_000) do |j|
    0.upto(y/1_000) do |k|
      next unless 10_000 * i + 5_000 * j + 1_000 * k == y
      print "#{i} #{j} #{k}\n"
      break_1000 = true
      break
    end
    next unless break_1000
    break_5000 = true
    break
  end
  next unless break_5000
  break
end