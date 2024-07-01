n = gets.to_i
as = gets.chomp.split.map(&:to_i)
x = Hash.new(0)
s = 0

as.each do |i|
  x[i] += 1
end

x.each_value do |i|
  s += (i)*(i-1)/2
end

as.each do |i|
  minus = ((x[i]*(x[i]-1))-((x[i]-1)*(x[i]-2)))/2
  puts s-minus
end