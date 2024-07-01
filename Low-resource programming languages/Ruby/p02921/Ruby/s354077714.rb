expects = gets.chomp.split(//)
actuals = gets.chomp.split(//)

count = 0
expects.each_with_index { |e, i|
  count += 1 if e == actuals[i]
}

puts count
