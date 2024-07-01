# frozen_string_literal: true

n = gets.to_i
aa = gets.split.map(&:to_i).sort
t = aa.tally
dd = Hash.new { false }
t.each do |k, v|
  dd[k] = true if v > 1
end
a = []
aa.each do |e|
  a.push e unless dd[e]
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

puts d.size
