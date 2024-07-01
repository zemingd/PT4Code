n = gets.to_i
a = gets.split.map(&:to_i)
counter = 0

n.times do |i|
   if a[i] == a[0..i].min
    counter += 1
  end
end

p counter
