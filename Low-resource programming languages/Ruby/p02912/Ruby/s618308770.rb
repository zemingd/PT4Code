n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.sort!

m.times do |i|
  half = a.pop / 2
  pos = a.bsearch_index{ |ai| ai > half }
  a.insert(pos, half)
end

puts(a.reduce(&:+))