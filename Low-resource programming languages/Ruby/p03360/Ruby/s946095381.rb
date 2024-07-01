a = gets.split(" ").map(&:to_i)
gets.to_i.times do
  a[a.index(a.max)] =   a.max * 2
end
puts a.inject(&:+)