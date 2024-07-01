n = gets.to_i
xs = gets.split.map(&:to_i)

ans = 10**20

min = xs.min
max = xs.max

(min..max).each do |p|
  t_ans = 0
  xs.each do |x|
    t_ans += (x - p)**2
  end
  ans = [ans, t_ans].min
end

puts ans
