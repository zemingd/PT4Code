n = $stdin.gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
q = $stdin.gets.chomp.to_i
b = Array.new(q);c = Array.new(q)
q.times do |i|
  b[i], c[i] = (gets.chomp.split(' ').map(&:to_i))
end

hash = Hash.new(0)
a.each do |k|
 hash[k] += 1
end

q.times do |j|

  if hash.has_key?(b[j])
    hash[c[j]] = hash[c[j]]+ hash[b[j]]
    hash.delete(b[j])
  end
  ans = 0
  hash.each do |k, v| 
   ans = ans + (k*v)
  end
puts ans
end