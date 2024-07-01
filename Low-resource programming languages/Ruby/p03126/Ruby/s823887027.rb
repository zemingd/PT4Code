n,m = gets.split.map &:to_i; a = Array.new(n); k = 0
n.times do |i|
  a[i] = gets.split.map &:to_i
  a[i].shift
end
1.upto(m) do |i|
  k += 1 if a.all?{|e| e.include?(i)}
end
puts k
