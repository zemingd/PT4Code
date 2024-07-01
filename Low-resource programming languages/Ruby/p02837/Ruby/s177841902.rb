t = []

n = gets.to_i

count = 0

n.times do
  a = gets.to_i
  xys = []

  a.times do
    x, y = gets.split.map(&:to_i)
    xys << [x, y]
  end

  t << xys
end

# puts t.to_s

(2**n).times do |i|
  fl = true

  nn = i.to_s(2)
  nn = nn.rjust(n, '0')

  n.times do |j|
    next if nn[j] == '0'

    t[j].each do |x, y|
      fl = false if nn[x - 1] != y.to_s
    end
  end

  if fl
    count = [nn.count('1'), count].max
  end
end

puts count
