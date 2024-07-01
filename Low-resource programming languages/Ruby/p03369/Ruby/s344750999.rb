n, total = gets.chomp.split(" ").map(&:to_i)
needs = n.times.map{gets.to_i}
remain = total - needs.inject(:+)

min = needs.min

p remain / min + n