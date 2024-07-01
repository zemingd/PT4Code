n,l = gets.split(" ").map(&:to_i)

ary = [] 

n.times do |i|
  ary.push(l+i)
end

d = 10000
idx = 0

ary.size.times do |j|
  if ary[j].abs < d
    d = ary[j].abs 
    idx = j
  end
end

ary.delete_at(idx)
p ary.inject(:+)
