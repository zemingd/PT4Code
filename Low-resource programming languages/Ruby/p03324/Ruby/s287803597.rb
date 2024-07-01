d,n = gets.split.map(&:to_i)
ar = []

if d == 0
  n.times do |i|
  ar <<  i+1
  end
  puts ar[n-1]
elsif d == 1
  n.times do |i|
  ar << (i+1)*100
  end
  puts ar[n-1]
else
  n.times do |i|
  ar << (i+1)*10000
  end
  puts ar[n-1]
end
