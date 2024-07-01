n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
hash = {}

m.times do |i|
  a,b = gets.split.map(&:to_i)
  hash[a] = (hash[a] || []).push(b)
  hash[b] = (hash[b] || []).push(a)
end

cnt = n - hash.count
hash.each do |k,v|
  i = k - 1
  varr = v.map { |l| arr[l-1] }
  cnt += 1 if arr[i] > varr.max
  if arr[i] > v.max
  end
end
puts cnt