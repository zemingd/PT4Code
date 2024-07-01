n, k = gets.split.map &:to_i
as = [1] + gets.split.map(&:to_i).map { |x| Math.log x }
#(1..n).each { |i| as[i] *= as[i-1] }
prev = as[0, k].inject(&:+)
(k...n).each do |i|
  mul = prev + as[i+1] - as[i+1-k]
  #p mul
  if (mul - prev).abs < 1e-5
    puts "No"
  elsif mul > prev
    puts "Yes"
  else
    puts "No"
  end
  prev = mul
end
