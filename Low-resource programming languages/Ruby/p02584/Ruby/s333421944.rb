x, k, d = gets.split.map(&:to_i)
cnt = k.odd? ? 1 : 2

cnt.times do
  pos = (x + d).abs
  neg = (x - d).abs
  x = pos if pos < neg and next
  x = neg
end
puts x