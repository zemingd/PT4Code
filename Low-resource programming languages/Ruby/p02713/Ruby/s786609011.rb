result = Benchmark.realtime do
num = gets.to_i
r = [*1..num]

sum_num=0
r.each do |num1|
  r.each do |num2|
    r.each do |num3|
      sum_num+=num1.gcd(num2).gcd(num3)
    end
  end
end
puts sum_num