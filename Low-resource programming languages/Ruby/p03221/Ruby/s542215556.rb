N, M = gets.split.map(&:to_i)
P = Array.new(M)
Y = Array.new(M)

p_hash = Hash.new{|hash, key| hash[key] = []}
M.times do |i|
  P[i], Y[i] = gets.split.map(&:to_i)
  p_hash[P[i]] << [Y[i], i]
end

answers = Array.new(M)
p_hash.each do |key, ary|
  ary.sort!
  leftStr = key.to_s.rjust(6, "0")
  ary.size.times do |i|
    rightStr = (i+1).to_s.rjust(6, "0")
    answers[ary[i][1]] = leftStr + rightStr
  end
end

answers.each do |ans|
  puts ans
end
