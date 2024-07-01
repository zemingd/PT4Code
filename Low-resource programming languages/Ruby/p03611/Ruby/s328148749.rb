N = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new(0)
a.length.times do |i|
  h[a[i]] += 1
end

max = 0
h.each do |k,v|
  sum = h[(k.to_i-1)] + h[k] + h[(k.to_i)+1]

  if sum > max
    max = sum
  end
end

puts max