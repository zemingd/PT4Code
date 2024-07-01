n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)

a = []
n.times do |i|
  a << [x[i], i]
end

a.sort_by!{|e| e[0]}

y = Array.new(n)

a.each_with_index do |e, i|
  if i + 1 <= n / 2
    y[e[1]] = a[n / 2][0]
  else
    y[e[1]] = a[n / 2 - 1][0]
  end
end
puts y