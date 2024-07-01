count, _length = gets.chomp.split(/ /).collect { |a| a.to_i }

ary = []  
count.times do
  ary << gets.chomp
end

puts ary.sort.join
