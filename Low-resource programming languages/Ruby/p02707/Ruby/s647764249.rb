n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n){0}
a.each do |x|
  b[x-1] += 1
end
puts b