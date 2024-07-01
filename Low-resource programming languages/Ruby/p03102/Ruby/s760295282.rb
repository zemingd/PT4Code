n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

a = n.times.map {gets.split.map(&:to_i)}
sum_arr =[]
sum = 0

a.each do |v|
  m.times do |i|
    sum += v[i]*b[i]
    if i == (m-1)
      sum_arr  <<  (sum+c)
      sum = 0
    end
  end
end

p sum_arr.count{|v| v > 0}