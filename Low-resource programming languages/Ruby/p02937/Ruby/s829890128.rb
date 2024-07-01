def to_hash_key(a)
  a.ord - 'a'.ord
end

s = gets.chomp
t = gets.chomp

hash = Array.new(27) { [] }
0.upto(s.size - 1) do |i|
  hash[to_hash_key(s[i])].push(i + 1)
end

0.upto(25) do |i|
  next if hash[i].empty?
  hash[i] << hash[i][-1] + s.size
end

ans = 0
current = 0
t.chars.each do |c|
  index = to_hash_key(c)
  if hash[index].empty?
    puts "-1"
    exit
  end
  next_current = hash[index].bsearch { |x| x > current }
  ans += next_current - current
  current = next_current % s.size
end

puts ans
