n,k = gets.chomp.split.map(&:to_i)
array = Array.new
n.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  ngo = Array.new(b,a)
  array.push(ngo)
end

puts array.flatten[k - 1]