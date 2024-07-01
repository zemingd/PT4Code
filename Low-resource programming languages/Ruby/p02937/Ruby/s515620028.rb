def to_hash_key(a)
  a.ord - 'a'.ord
end

s = gets.chomp
t = gets.chomp

hash = Array.new(26) { Array.new }
hash2 = Array.new(26) { Array.new }
0.upto(s.size - 1) do |i|
  hash2[to_hash_key(s[i])].push(i + 1)
end

0.upto(25) do |i|
  if hash2[i].empty?
    hash[i] = [nil] * (s.size + 1)
    next
  end
  hash2[i].unshift(0)
  0.upto(hash2[i].size - 2) { |j| hash[i] += [hash2[i][j + 1]] * (hash2[i][j + 1] - hash2[i][j]) }
  hash[i] += [hash2[i][1]] * (hash2.size - hash2[i][-1]) 
end

ans = 0
current = 0
t.chars.each do |c|
  key = to_hash_key(c)
  next_pos = hash[key][current]
  if next_pos.nil?
    puts '-1'
    exit 
  end
  ans +=  if current < next_pos
            next_pos - current
          else
            s.size + next_pos - current
          end
  current = next_pos
end

puts ans