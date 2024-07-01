n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i).sort

len = d.size

median = d[d.size / 2]

arc, abc = d.partition { |x| x >= median }

if arc.size != abc.size
  puts 0
  exit 0
end

puts ((abc.last + 1)..median).size