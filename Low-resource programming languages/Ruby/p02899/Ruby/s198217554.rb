N = gets.to_i
A = gets.split.map(&:to_i)
h = {}
A.each_with_index do |n, i|
  h.store(n, i+1)
end
puts h.sort.map { |a| a[1] }.join(" ")