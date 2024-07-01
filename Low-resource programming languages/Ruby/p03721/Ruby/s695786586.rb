n,k = gets.chomp.split.map(&:to_i)
array = Array.new
n.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  b.times do |j|
    array << a
  end
end

puts array[k - 1]