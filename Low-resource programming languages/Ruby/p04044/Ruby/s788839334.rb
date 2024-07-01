require 'set'
n, l = gets.split.map(&:to_i)
set = SortedSet.new
n.times do
  set.add gets.chomp
end
set.each do |s| 
  print s
end
puts
