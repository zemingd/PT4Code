abc = gets.split(" ").map(&:to_i)
print abc.inject(:+) - abc.max