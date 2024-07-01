a,b = gets.split.map(&:to_i)
10000.times do |i|
  if a == (i * 0.08).to_i && b == (i * 0.1).to_i
    p i
    exit
  end
end
p -1