n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

aa = a.group_by(&:itself).map{ |key, value| value.count }
aa.sort!.reverse!

aa.shift(k)
if aa.empty?
  p 0
else
  p aa.inject(:+)
end
