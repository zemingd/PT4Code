n = gets.chop
arrp = gets.chop.split.map(&:to_i)
arrq = gets.chop.split.map(&:to_i)
arr_p = arrp.sort
arr_q = arrq.sort

p_hash = Hash.new(0)
q_hash = Hash.new(0)

p_count = 1
arr_p.permutation do |x|
  p_hash[x] = p_count
  p_count += 1
end
q_count = 1
arr_q.permutation do |x|
  q_hash[x] = q_count
  q_count += 1
end

print (p_hash[arrp] - q_hash[arrq]).abs