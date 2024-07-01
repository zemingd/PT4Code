n, m = gets.strip.split.map(&:to_i)
ab = readlines.map {|line| line.strip.split.map(&:to_i) }.sort_by(&:last)

#p ab
max_a = ab.map(&:first).max

results = []

ab.each do |a, b|
  last_element = results.last
  next if last_element && a <= last_element && last_element < b
  break if results.last.to_i > max_a

  results.push(b-1)
end

p results.length
