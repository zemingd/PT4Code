n, m = gets.strip.split.map(&:to_i)
data = m.times.map { gets.strip.split.map(&:to_i) }

n.times do |i|
  c = 0
  data.each do |d|
    c  += d.index(i+1).nil? ? 0 : 1
  end
  puts c
end