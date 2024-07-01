n, sum = gets.split.map(&:to_i)
break_flag = false

n.times.each.with_index(0) do |x|
  n.times.each.with_index(0) do |y|
    n.times.each.with_index(0) do |z|
      next unless x + y + z == n
      if sum == 10000*x + 5000*y + 1000*z
        break_flag = true
        print "#{x} #{y} #{z}"
        break if break_flag
      end
      break if break_flag
    end
    break if break_flag
  end
  break if break_flag
end

