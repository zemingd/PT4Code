l = []
200.times do |i|
  l << i ** 2
end

n, d = gets.chomp.split.map(&:to_i)
x = []
n.times do |i|
  x[i] = gets.chomp.split.map(&:to_i)
end
cnt = 0
n.times do |i|
  i.times do |j|
    sum = 0
    d.times do |k|
      sum += (x[i][k] - x[j][k]) ** 2
    end
    if l.include?(sum)
      cnt += 1
    end
  end
end
puts cnt
