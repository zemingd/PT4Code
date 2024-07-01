N = gets.to_i
W = gets.chomp.split(' ').map(&:to_i)
total = W.reduce(:+)
W.each_with_object([]) do |n, array|
  array << (total - (array.last.to_i + n)).abs
  a, b = array[-2..-1]
  if a && a < b
    puts a
    exit
  end
end