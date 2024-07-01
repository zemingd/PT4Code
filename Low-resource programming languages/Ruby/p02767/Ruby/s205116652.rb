n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

res = 1<<30

x.sort!

(x[0]..x[-1]).each do |i|
  t = 0
  x.each do |xi|
    t += (xi - i) ** 2
  end
  res = [res, t].min
end

puts res