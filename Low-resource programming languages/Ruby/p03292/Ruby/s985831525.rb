tasks = gets.split(" ").map(&:to_i).sort
sum = 0
tasks.each_cons(2){|cost1, cost2| sum += cost1 - cost2 }
puts sum.abs