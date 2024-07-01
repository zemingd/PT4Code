n, x = gets.split(' ').map{|i| i.to_i}
a = gets.split(' ').map{|i| i.to_i}.sort

count = 0
a.each do |k|
  if x - k >= 0
    count += 1
  else
    break
  end
end

puts count