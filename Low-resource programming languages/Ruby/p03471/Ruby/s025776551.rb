# in:   n t     20 195000
# out:  x y z   10000 5000 1000

n, t = gets.split
n = n.to_i
t = t.to_i

x = y = z = 0
t_temp = -1

(n+1).times do |i|
  (n+1).times do |j|
    k = n - i - j
    t_temp = t
    t_temp -= 10000 * i
    t_temp -= 5000 * j
    t_temp -= 1000 * k
    if t_temp == 0
      x = i
      y = j
      z = k
    end
  end
  break if t_temp == 0
end

if t_temp != 0
  x = y = z = -1
end
puts "#{x} #{y} #{z}"
