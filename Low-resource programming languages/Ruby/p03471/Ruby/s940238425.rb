N, Y = gets.split.map(&:to_i)

(0 .. [N, Y/10000].min).each do |x|
  n, m = N - x, Y - 10000*x
  if (y = m/1000 - n) % 4 == 0
    if (z = N - x - y) >= 0
      puts [x, y, z] * " "
      exit
    end
  end
end
puts "-1 -1 -1"