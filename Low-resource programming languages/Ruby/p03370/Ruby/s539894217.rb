miar = Array.new

n, x = gets.chomp!.split(" ").map(&:to_i)

n.times do
  mi = gets.chomp.to_i
  x -= mi
  miar.push(mi)
end

min = miar.min
count = miar.size

while x >= min
  x -= min
  count += 1
end

p count