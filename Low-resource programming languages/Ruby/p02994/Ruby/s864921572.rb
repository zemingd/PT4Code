N,L = gets.chomp.split(" ").map(&:to_i)

eat = nil
arr = []
(1..N).each do |i|
    taste = L + i - 1
    arr << taste
    eat = taste if eat.nil?
    eat = taste if taste.abs < eat.abs
end
puts arr.reduce(0,:+)-eat