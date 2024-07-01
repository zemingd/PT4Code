n, k, q = gets.split.map &:to_i
a = []
q.times do |i|
  a << gets.to_i
end
point = Array.new(n, k)
a.length.times do |i|
  n.times do |j|
    if j != a[i]-1
      point[j] -= 1
    end
  end
end
n.times do |i|
  if point[i] <= 0
    puts "No"
  else
    puts "Yes"
  end
end