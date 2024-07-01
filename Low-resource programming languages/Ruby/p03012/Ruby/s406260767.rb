n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)

abs = []

(1...n).each do |number|
  abs.push((array.slice(0..number).inject(:+) * 2 - array.inject(:+)).abs)
end

puts abs.min
