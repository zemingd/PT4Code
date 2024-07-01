n, k = gets.split.map &:to_i
as = gets.split.map(&:to_i)
#(1..n).each { |i| as[i] *= as[i-1] }
prev = as[0, k].inject(&:*)
(k...n).each do |i|
  mul = prev / as[i-k] * as[i]
  if mul > prev
    puts "Yes"
  else
    puts "No"
  end
  prev = mul
end
