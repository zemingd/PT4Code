gets
xs = gets.strip.split(" ").map(&:to_i)

sorted = xs.sort
a = sorted[xs.size / 2 - 1]
b = sorted[xs.size / 2]

xs.each do |x|
  if x <= a
    puts b
  elsif x >= b
    puts a
  end
end
