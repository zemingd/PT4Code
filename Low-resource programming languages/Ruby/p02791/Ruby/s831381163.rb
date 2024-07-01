gets
a = gets.split.map(&:to_i)

x = 0
min = a[0]
a.each do |n|
  if n <= min
    x += 1
    min = n
  end
end

puts x