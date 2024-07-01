n = gets.chomp.split(' ').map(&:to_i)[0]
v = gets.chomp.split(' ').map(&:to_i)

count_odd = Hash.new(0)
count_even = Hash.new(0)
v.each_with_index do |x, i|
  count_odd[x] += 1 if i.even?
  count_even[x] += 1 if i.odd?
end

even_max = count_even.max{ |x, y| x[1] <=> y[1] } 
odd_max = count_odd.max{ |x, y| x[1] <=> y[1] } 

if odd_max[0] == even_max[0]
  count_even.delete(odd_max[0])
  count_odd.delete(even_max[0])
  even_max2 = count_even.empty? ? [0, 0] : count_even.max{ |x, y| x[1] <=> y[1] } 
  odd_max2 = count_odd.empty? ? [0, 0] : count_odd.max{ |x, y| x[1] <=> y[1] } 

  puts n - [even_max[1] + odd_max2[1], even_max2[1] + odd_max[1]].max
else
  puts n - odd_max[1] - even_max[1]
end