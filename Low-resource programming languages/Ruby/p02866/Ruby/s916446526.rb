n = gets.to_i
ds = gets.split.map(&:to_i)
if ds[0] != 0
  a = 0
else
  a = 1
  ds.delete(1)
  (1..ds.length-1).each do |i|
    a = a * ds[i]
  end
end
puts a
