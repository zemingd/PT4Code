n,k = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map{|x| (x.to_f + 1)/2}
sum_array = Array.new(n,0)
ans = 0
ps.each_with_index do |p,i|
  if i != 0
    sum_array[i] = sum_array[i-1] + p
  else
    sum_array[i] = p
  end
end
(k-1..n-1).each do |i|
  if i != k-1
    ans = [ans,sum_array[i] - sum_array[i-k]].max
  else
    ans = [ans,sum_array[i]].max
  end
end
puts ans