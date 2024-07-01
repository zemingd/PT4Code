n, l = numbers = gets.split.map(&:to_i)
flaver = []
total = 0
(1..n).each do |n|
  value = n + l - 1
  total += value
  flaver << value
end

if flaver.all? {|f| f>=0}
  flaver.delete(flaver.min)
  p flaver.inject(:+)
elsif flaver.all? {|f| f<0}
  flaver.delete(flaver.max)
  p flaver.inject(:+)
else
  flaver.delete(0)
  p flaver.inject(:+)
end