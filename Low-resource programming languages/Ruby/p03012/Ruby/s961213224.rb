n = gets.chomp.to_i
input = gets.chomp.split(' ').map(&:to_i)
array = Array.new
(0..n-2).each do |t|
  array << (input.slice(0..t).inject(:+) - input.slice(t+1..-1).inject(:+)).abs
end
puts array.min
