xy=gets.split.map(&:to_i)
puts [1,3,5,7,8,10,12].include?(xy)||[4,6,9,11].include?(xy) ? "Yes" : "No"