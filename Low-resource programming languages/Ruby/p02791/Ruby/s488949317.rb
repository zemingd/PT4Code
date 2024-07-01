n = gets.to_i
a = gets.chomp.split.map(&:to_i)
counter = 0
b = a.max

n.times do |i|
  if b >= a[i]
     counter += 1
     b = a[i]
  end
end

p counter
