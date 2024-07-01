class Array
  def abs; map{|k| k.abs } end
end

n = gets.to_s.to_i
a = gets.to_s.split.map{|t|t.to_i}

n_nega = 0
ans_sum = 0
abs_min = 1_000_000_000

a.each do |t|
  
  ab = t.abs
  
  ans_sum += ab
  
  abs_min = ab if abs_min > ab
  
  n_nega += 1 if t < 0
  
end

puts n_nega.even? ? ans_sum : ans_sum - abs_min * 2 