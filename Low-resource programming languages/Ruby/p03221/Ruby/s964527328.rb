N, M = gets.split.map(&:to_i)
P = Array.new(M)
Y = Array.new(M)
M.times do |i|
  P[i], Y[i] = gets.split.map(&:to_i)
end

p_hash = Hash.new{|hash, key| hash[key] = []}
P.each_with_index do |p_num, i|
  p_hash[p_num] << Y[i]
end

p_hash.each {|key, ary| ary.sort!}

number = Array.new(M)
M.times do |i|
  leftStr = P[i].to_s.rjust(6, "0")
  idx = p_hash[P[i]].index(Y[i]) + 1
  rightStr = idx.to_s.rjust(6, "0")
  number[i] = leftStr + rightStr
  puts number[i]
end
