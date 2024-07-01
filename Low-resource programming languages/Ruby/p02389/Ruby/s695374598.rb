ins = gets.split(" ")
ins.map!(&:to_i)
puts ins.inject(:*) + " " + ins.inject(:+)*2