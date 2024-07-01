n = gets.to_i
x = gets.split().map(&:to_i).sort
st = x[0]
ed = x[-1]

ans = 1000000000000

(st..ed).each do |p|
  sum = 0
  x.each do |i|
    sum += (p-i)**2
  end
  ans = [ans, sum].min
end

puts ans
