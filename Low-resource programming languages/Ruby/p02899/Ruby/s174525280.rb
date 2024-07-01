n = gets.to_i
a = gets.split.map(&:to_i)

o = Array.new(n)
a.each_with_index do |x, i|
  o[x - 1] = i + 1
end
puts o.join(" ")
