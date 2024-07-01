n = gets.to_i
a = gets.split.map(&:to_i)
m1 = a.sort[n / 2 - 1]
m2 = a.sort[n / 2]
a.each do |x|
  if x < m2
    puts m2
  else
    puts m1
  end
end