x, k, d = gets.split.map(&:to_i)
cnt = k.odd? ? 1 : 2

cnt.times do
  pos = (x + d).abs
  neg = (x - d).abs
  if pos < neg
    x = pos
  else
    x = neg
  end
end
puts x