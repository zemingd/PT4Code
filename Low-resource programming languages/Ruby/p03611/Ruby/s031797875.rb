n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

h = a.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

ans = 0
0.upto(10**5-1) do |i|
  c = h[i-1].to_i + h[i].to_i + h[i+1].to_i
  ans = c if c > ans
end
p ans
