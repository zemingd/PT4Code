number = gets.split.map(&:to_i)

number.rotate.each do |n|
  print n, " "
end