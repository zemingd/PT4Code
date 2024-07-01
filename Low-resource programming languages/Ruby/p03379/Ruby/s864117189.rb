n = gets.to_i
x = gets.split.map(&:to_i)
a1 = x.sort[n / 2 - 1]
a2 = x.sort[n / 2]
x.each do |y|
  if y <= a1
    puts a2
  else
    puts a1
  end
end