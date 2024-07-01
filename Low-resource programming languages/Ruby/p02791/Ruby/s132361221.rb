n = gets.to_i
pn = gets.strip.split.map(&:to_i)

min = n + 1
count = 0
pn.each do |p|
  min = [min, p].min
  count += 1 if p > min
end

puts n - count
