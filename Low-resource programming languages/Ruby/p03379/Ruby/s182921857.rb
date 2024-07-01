n = gets.split.first.to_i
xs = gets.split.map(&:to_i) 

cxs = xs.clone
cxs.sort!
ans = []
a = cxs[ (n / 2) - 1 ]
b = cxs[ (n / 2) ]
xs.size.times do |i|
  if xs[i] < b
    ans << b
  else
    ans << a
  end
end

puts ans