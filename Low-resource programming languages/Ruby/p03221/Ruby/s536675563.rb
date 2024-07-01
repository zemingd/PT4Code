N, M = gets.split.map(&:to_i)
P = Array.new(M)
Y = Array.new(M)

p_hash = Hash.new{|hash, key| hash[key] = []}
M.times do |i|
  P[i], Y[i] = gets.split.map(&:to_i)
  p_hash[P[i]] << Y[i]
end

p_hash.each do |key, ary|
  ary.sort!
end

P.each_with_index do |v, i|
  leftStr = v.to_s.rjust(6, "0")
  idx = p_hash[v].index(Y[i]) + 1
  rightStr = idx.to_s.rjust(6, "0")
  puts leftStr + rightStr
end
