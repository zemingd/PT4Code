n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
hasi = Array.new(n,0)
m.times do
  a,b = gets.split.map(&:to_i)
  if h[a-1] >= h[b-1]
    hasi[b-1] += 1
  else
    hasi[a-1] += 1
  end
end
sum = 0
hasi.each do |a|
  if a == 0
    sum += 1
  end
end
puts sum