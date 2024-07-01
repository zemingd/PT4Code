N=gets.to_i
ab=Hash.new(0)
N.times do
  a,b = gets.split.map(&:to_i)
  ab[b] += a
end
deadlines = ab.keys.sort.reverse

t=10**9+1
deadlines.each do |d|
  if t<d
    t = t - ab[d]
  else
    t = d - ab[d]
  end
end

if t<0
  puts "No"
else
  puts "Yes"
end