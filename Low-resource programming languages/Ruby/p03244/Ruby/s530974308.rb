n = gets.to_i

odd = Hash.new(0)
even = Hash.new(0)

v = gets.split.map(&:to_i)

n.times do |i|
  if i%2 == 0
    even[v[i]] += 1
  else
    odd[v[i]] += 1
  end
end

odd = odd.sort_by{ |k, t| -t}.to_h
odd.store(0,0)
even = even.sort_by{ |k, t| -t}.to_h
even.store(0,0)

if odd.keys.first != even.keys.first
  puts n - odd.values.first -  even.values.first
else
  x = odd.values[0] + even.values[1]
  y = odd.values[1] + even.values[0]

  puts [n-x,n-y].min
end
