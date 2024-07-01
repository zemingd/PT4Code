require 'set'
set = Set.new()
n = gets.to_i
s = gets.split
s.each do |t|
  set << t
end
puts set.size == 3 ? :Three : :Four