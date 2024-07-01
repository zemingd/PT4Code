n = gets.chomp.to_i
input = gets.chomp
wlist = input.split.collect{ |item| item.to_i}
sum = 0
wlist.each { |i| sum += i}
leftsum = 0
result = sum
wlist.each do |ni|
  leftsum += ni
  dif = (sum - leftsum*2).abs
  if result > dif
    result = dif
  else
    break
  end
end
puts result