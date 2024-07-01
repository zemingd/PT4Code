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
  ary[i] = i
  benri[i] = 1
end

def get_root(i,t)
  while i != t[i]
    i = t[i]
  end
  i
end

(0..m-1).reverse_each do |i|
  root_a, root_b = bridges[i].map{|a| get_root(a,ary)}

  if root_a != root_b
    result.push(benri[root_a] * benri[root_b])
    benri[root_a] += benri[root_b]
    ary[root_b] = ary[root_a]
  else
    result.push(0)  
  end 
end

sum = 0
(0..m-1).reverse_each do |i|
  sum += result [i]
  puts sum
end