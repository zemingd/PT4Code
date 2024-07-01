a,b = gets.strip.split.map(&:to_i)
if a == b then
  a.times do
    print a
  end
elsif a > b then
  a.times do
    print b
  end
else
  b.times do
    print a
  end
end