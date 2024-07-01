N, K = gets.split(' ').map(&:to_i)

per = (1.0 / N.to_f).to_f
total = 0.0
temp_q = 0.0
temp_m = 1 
1.upto(N) do |n|
  if temp_m * 2 < n
    total += temp_q
    next
  end
  q = per.to_f 
  m = n 
  loop do
    if K <= m
      temp_q = q.to_f
      temp_m = m
      break
    end
    m *= 2
    q /= 2.0
  end
  total += q
end

puts total.to_f
