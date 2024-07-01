n = gets.to_i
a = gets.split.map(&:to_i)

array = Array.new(n)
n.times do |i|
  array[a[i]-1] = i + 1
end


puts array.join(" ")
