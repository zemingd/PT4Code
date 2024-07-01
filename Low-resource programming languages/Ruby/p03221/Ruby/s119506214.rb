N, M = gets.split.map(&:to_i)
P = Array.new(M)
Y = Array.new(M)

p_hash = Hash.new{|hash, key| hash[key] = []}
M.times do |i|
  P[i], Y[i] = gets.split.map(&:to_i)
  p_hash[P[i]] << Y[i]
end

left_hash = Hash.new()
p_hash.each do |key, ary|
  ary.sort!
  left_hash[key] = key.to_s.rjust(6, "0")
end

number = Array.new(M)
M.times do |i|
  leftStr = left_hash[P[i]]
  idx = p_hash[P[i]].index(Y[i]) + 1
  rightStr = idx.to_s.rjust(6, "0")
  number[i] = leftStr + rightStr
  puts number[i]
end
