N = gets.to_i
As = gets.split.map(&:to_i)

as = As.sort
am = as.last
h = Array.new(am + 1, true)
as.each_with_index do |a, i|
  next unless h[a]
  h[a] = false if a == as[i + 1]
  (2*a).step(am, a){h[_1] = false}
end
puts as.count{h[_1]}