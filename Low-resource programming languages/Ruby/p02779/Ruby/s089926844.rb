gets
numArry = gets.chomp.split(" ")
puts numArry.length == numArry.uniq.length ? "yes" : "no"