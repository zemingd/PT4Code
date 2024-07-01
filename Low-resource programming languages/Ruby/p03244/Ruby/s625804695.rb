n = gets.chomp.split(' ').map(&:to_i)[0]
v = gets.chomp.split(' ').map(&:to_i)

count_odd = Hash.new(0)
count_even = Hash.new(0)
v.each_with_index do |x, i|
  count_odd[x] += 1 if i.even?
  count_even[x] += 1 if i.odd?
end

odd_max = count_odd.max{ |x, y| x[1] <=> y[1] } 
even_max = count_even.max{ |x, y| x[1] <=> y[1] } 

if odd_max[0] == even_max[0]
  if odd_max[1] < even_max[1]
    count_even.delete(odd_max[0])
    even_max = count_even.empty? ? [0, 0] : count_even.max{ |x, y| x[1] <=> y[1] } 
  else
    count_odd.delete(even_max[0])
    odd_max = count_odd.empty? ? [0, 0] : count_odd.max{ |x, y| x[1] <=> y[1] } 
  end
end
puts n - odd_max[1] - even_max[1]