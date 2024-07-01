n = gets.to_i
xs = gets.split.map(&:to_i)
mn = 10**6

(1..100).each do |p|
  sum = 0
  xs.each do |x|
    sum += (x - p)**2
  end
  mn = [mn, sum].min
end

puts mn
