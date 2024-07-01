n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
tenbou = [true]*n
m.times do
  a,b = gets.split.map{|i| i.to_i-1}
  if h[a] > h[b]
    tenbou[b] = false
  elsif h[a] < h[b]
    tenbou[a] = false
  elsif h[a] == h[b]
    tenbou[a] = false
    tenbou[b] = false
  end
end

puts tenbou.count(true)