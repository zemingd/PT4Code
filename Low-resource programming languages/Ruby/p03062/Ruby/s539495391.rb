n = gets.to_s.to_i
a = gets.to_s.split

n_nega = 1
ans_sum = 0
abs_min = 1_000_000_000

a.each do |t|
  
  t = t.to_i
  
  ab = t.abs
  
  ans_sum += ab
  
  abs_min = ab if abs_min > ab
  
  n_nega *= -1 if t < 0
end

puts n_nega == 1 ? ans_sum : ans_sum - abs_min * 2 