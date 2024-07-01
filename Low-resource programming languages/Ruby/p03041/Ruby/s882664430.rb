n,k =gets.split(/\s/).map(:to_i)
string = gets.split(//).take(n)
puts [string.take(k-1),string.drop(k-1).take(1).map(&:downcase),string.drop(k)].flatten.join