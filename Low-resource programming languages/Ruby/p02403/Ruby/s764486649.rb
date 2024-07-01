while str = gets do
  y, x = str.chomp.split(" ").to_i
  break if x == y == 0
  str = ""
  x.times do |n|
    str << "#"
  end
  y.times do |n|
    puts str
  end
end