# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i).sort
t = a.tally
dd = Hash.new { false }
t.each do |k, v|
  dd[k] = true if v > 1
end
d = []
d.push a.shift unless a.empty?
loop do
  break if a.empty?

  x = d.last
  c = []
  a.each do |e|
    c.push e if (e % x).positive?
  end
  d.push c.shift unless c.empty?
  a = c
end
count = 0
d.each do |e|
  count += 1 unless dd[e]
end
puts count
