n = $stdin.gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
q = $stdin.gets.chomp.to_i
ans = 0
hash = Hash.new(0)
a.each do |k|
 hash[k] += 1
  ans += k
end

q.times do |j|
  b, c = gets.chomp.split(' ').map(&:to_i)
  if hash.has_key?(b)
    ans += (c-b)*hash[b]
    hash[c] = hash[c]+ hash[b]
    hash.delete(b)
  end
puts ans

end