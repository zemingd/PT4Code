n, k = gets.split.map &:to_i
as = [1] + gets.split.map(&:to_i)
(1..n).each { |i| as[i] *= as[i-1] }
#mul = as[0, k].inject(&:*)
prev = as[k]
(k...n).each do |i|
  mul = as[i+1] / as[i-k+1]
  #p mul
  if mul > prev
    puts "Yes"
  else
    puts "No"
  end
  prev = mul
end
