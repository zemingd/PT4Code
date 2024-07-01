n = readline.split(' ').map(&:to_i)[0]
p = readline.split(' ').map(&:to_i).join.to_i
q = readline.split(' ').map(&:to_i).join.to_i

a = []
(1..n).each do |i|
  a.push(i)
end
cnt_p = 0
cnt_q = 0
a.permutation.to_a.each do |ap|
  if ap.join.to_i < p
    cnt_p += 1
  end
  
  if ap.join.to_i < q
    cnt_q += 1
  end
end

puts (cnt_p - cnt_q).abs