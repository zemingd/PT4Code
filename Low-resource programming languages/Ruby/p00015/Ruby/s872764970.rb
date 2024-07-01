n = gets.to_i
n.times do |i|
  count = 0
  a = gets.chomp.split("").map(&:to_i)
  b = gets.chomp.split("").map(&:to_i)
  if a.size > b.size
    (a.size - b.size).times do
      b.insert(0,0)
    end
  else
    (b.size - a.size).times do
      a.insert(0,0)
    end
  end
  c = Array.new(a.size + 1)
  c.size.times do |i|
    c[i] = 0
  end
  for i in 1..a.size do
    c[-i] = (a[-i] + b[-i])
  end
  for i in 1..c.size do
    if c[-i] >= 10
      c[-i - 1] += c[-i] / 10
      c[-i] = c[-i] % 10
    end
  end
  c.delete_at(0) if c[0] == 0
  c = c.join("")
  if c.size >= 80
    puts "overflow"
  else
    puts c
  end
end