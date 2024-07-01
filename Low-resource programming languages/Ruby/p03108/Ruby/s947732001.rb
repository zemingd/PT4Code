n,m = $stdin.gets.split.map(&:to_i)
bridges =[]
ary = []
benri = []
result = []
c = n*(n-1)/2
m.times do |i|
  bridges[i] = $stdin.gets.split.map(&:to_i)
end

(1..n).each do |i|
  ary[i] = {depth: 1, value: i}
  benri[i] = 1
end

def get_root(i,t)
  while i != t[i][:value]
    i = t[i][:value]
  end
  i
end

(0..m-1).reverse_each do |i|
  root_a, root_b = bridges[i].map{|a| get_root(a,ary)}

  if root_a != root_b
    result.push(benri[root_a] * benri[root_b])
    
    if ary[root_a][:depth] < ary[root_b][:depth]
      ary[root_a][:value] = ary[root_b][:value]
      benri[root_b] += benri[root_a]
    elsif ary[root_a][:depth] > ary[root_b][:depth]
      ary[root_b][:value] = ary[root_a][:value]
      benri[root_a] += benri[root_b]
    else
      ary[root_a][:value] = ary[root_b][:value]
      benri[root_b] += benri[root_a]
      ary[root_b][:depth] += 1
    end
  else
    result.push(0)  
  end 
end

sum = 0
(0..m-1).reverse_each do |i|
  sum += result [i]
  puts sum
end