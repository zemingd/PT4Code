number = gets.split.map(&:to_i)

number.rotate(2).each do |n|
  print n, " "
end