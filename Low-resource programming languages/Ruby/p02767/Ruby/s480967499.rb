n = gets.to_i
x = gets.split.map(&:to_i)

ans = 10**10
100.times do |i|
  times = 0
  x.each do |j|
    times += (j-i)**2
  end
  ans = times if times < ans
end

puts ans