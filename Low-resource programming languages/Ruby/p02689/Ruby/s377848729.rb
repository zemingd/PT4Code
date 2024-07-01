n,m = gets.chomp.split(' ').map(&:to_i)
h = gets.chomp.split(' ').map(&:to_i)
hash = {}
array = Array.new(n,true)

m.times do
  a,b = gets.chomp.split(' ').map(&:to_i)
  if (h[a-1] >= h[b-1])
    array[b-1] = false
  elsif(h[a-1] <= h[b-1])
    array[a-1] = false
  end
end

puts array.count(true)