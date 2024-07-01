n = gets.chomp.to_i
list = gets.chomp.split(' ').map(&:to_i)

h = {}
list.each do |len|

  if h.key?(len)
    h[len] += 1
  else
    h[len] = 1
  end
end

e = []
keys = h.keys.sort.uniq.reverse
keys.each do |key|
  if h[key] >= 4
    e << key
    e << key
  elsif h[key] >= 2
    e << key
  end
  break if e.size >= 2
end

puts e.size >= 2 ? e[0] * e[1] : 0
