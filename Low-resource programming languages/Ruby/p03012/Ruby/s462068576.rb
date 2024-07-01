gets
arr = gets.split.map(&:to_i)
sum = arr.inject(:+)
half = sum/2+1
border = 0
ans = 10000

arr.each do |i|
  border += i
  ans = [ans, (sum-border*2).abs].min
  if border >= half
    break
  end
end

puts ans