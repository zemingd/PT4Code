x = gets.split.map(&:to_i)
a = 1

x.each do |i|
  if 0 == i
    puts a
  else
    a = a + 1
  end
end