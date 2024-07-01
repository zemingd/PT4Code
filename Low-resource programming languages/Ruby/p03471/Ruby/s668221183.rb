# in:   n t     20 195000
# out:  x y z   10000 5000 1000

n, t = gets.split
n = n.to_i
t = t.to_i

x = y = z = 0

n.times do |i|
  t_temp = t
  t_temp -= 10000 * (n-i)
  next if t_temp < 0
  if t_temp == 0
    x = n-i
    break
  end
  (n-i).times do |j|
    t_temp = t
    t_temp -= 10000 * (n-i)
    t_temp -= 5000 * (n-i-j)
    if t_temp == 0
      x = n-i
      y = n-i-j
      break
    end
    (n-i-j).times do |k|
      t_temp = t
      t_temp -= 10000 * (n-i)
      t_temp -= 5000 * (n-i-j)
      t_temp -= 1000 * (n-i-j-k)
      if t_temp == 0
        x = n-i
        y = n-i-j
        z = n-i-j-k
        break
      end
    end
    break if t_temp == 0
  end
  break if t_temp == 0
end

puts "#{x} #{y} #{z}"
