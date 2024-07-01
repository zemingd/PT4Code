N = gets.to_i
array = N.times.map{gets.chomp}

hash = Hash.new(0)
array.each { |a| hash[a] += 1 }
max = hash.values.max

puts hash.select { |k, v| v == max }.keys.sort