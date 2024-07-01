gets
arr = gets.split.map(&:to_i)
half = arr.inject(:+)/2
sum = arr.inject(:+)

border = 0

arr.each do |i|
  border += i
  if border >= half
    break
  end
end

puts (sum-border*2).abs