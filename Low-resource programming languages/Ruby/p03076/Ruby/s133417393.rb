orders = 5.times.map{gets.to_i}.sort_by {|i| (10 - i.to_s[-1].to_i) % 10 }
cnt = 0

orders.each_with_index do |o,i|
  if i < 4
    sum_num = 10 - o.to_s[-1].to_i
    sum_num = 0 if o % 10 == 0

    cnt += o + sum_num
  else
    cnt += o
  end
end
puts cnt