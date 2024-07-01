N = gets.to_i
A = gets.strip.split.map(&:to_i)

h = []
A.each_with_index do |i, index|
  h[i-1] = index+1
end
puts h.join(" ")