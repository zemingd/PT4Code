n,m=gets.split.map(&:to_i)
h = Hash.new { 0 }

m.times do
  a,b=gets.split.map(&:to_i)
  h[a]+=1
  h[b]+=1
end

puts h.sort.to_h.values