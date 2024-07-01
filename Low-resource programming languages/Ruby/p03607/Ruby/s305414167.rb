require 'set'
N = gets.to_i
a_list = N.times.map { gets.to_i }
a_set = Set.new
a_list.each do |a|
  if a_set.include?(a)
    a_set.delete(a)
  else
    a_set.add(a)
  end
end
ans = a_set.size
puts ans
