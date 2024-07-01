
n = gets.to_i
arr = gets.split(" ").map.with_index{|x,i| x.to_i-(i+1)}

bit = {}
arr.each do |x|
  if bit[x].nil?
    bit[x] = 1
  else
    bit[x] += 1
  end
end

if bit.values.uniq.size == 1
  b = 0
else
  b = bit.max{|a,b| a[1] <=> b[1]}[0]
end

puts arr.inject(0){|sum,x| sum + (x-b).abs}