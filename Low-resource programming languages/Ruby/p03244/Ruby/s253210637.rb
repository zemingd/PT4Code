n = gets.chop.to_i
v = gets.chop.split.map(&:to_i)

odd = v.each_slice(2).map{|n| n.first}
even = v.each_slice(2).map{|n| n.last}

def num_of_elem(array)
  h = Hash.new{0}
  array.each do |key|
    h[key] += 1
  end
  h
end

odd_count = num_of_elem(odd)
even_count = num_of_elem(even)

odd_sorted = odd_count.to_a.sort_by{ |x| x[1]}.reverse
even_sorted = even_count.to_a.sort_by{ |x| x[1]}.reverse

if odd == even
  puts n/2
elsif odd_sorted[0][1] == n/2 && even_sorted[0][1] == n/2
  puts 0
else
  ans1 = n - odd_sorted[0][1] - even_sorted[1][1]
  ans2 = n - even_sorted[0][1] - even_sorted[1][1]

  puts [ans1, ans2].min
end
