listA = gets.split.map(&:to_i).sort
puts listA[-1] - listA[0]
