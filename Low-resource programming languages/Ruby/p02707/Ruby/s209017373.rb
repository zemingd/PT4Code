n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

h = Hash.new(0)
a.each do |ai|
  h[ai] += 1
end

h.each do |ha|
  p ha
end