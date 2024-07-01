n = gets.to_i
p_org = gets.split.map(&:to_i)
flg = false

n.times do |i|
  n.times do |j|
    p = p_org.dup
    p[i], p[j] = p[j], p[i]
    if p == p_org.sort
      flg = true
      break
    end
  end
end

puts flg ? 'YES' : 'NO'