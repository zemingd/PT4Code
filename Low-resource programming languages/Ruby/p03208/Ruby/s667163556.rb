N,K=gets.chomp.split(" ").map(&:to_i)
h = []
(1..N).each do |i|
  h.push(gets.chomp.to_i)
end
h_sort = h.sort
min = Float::INFINITY
(0..(N-K)).each do |i|
  arr = h_sort[i..(i+K-1)]
  v = arr.last - arr.first
  min = v if v < min
end
print("#{min}\n")