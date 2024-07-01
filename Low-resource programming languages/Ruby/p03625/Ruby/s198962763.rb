n = STDIN.gets.chomp.to_i
a = STDIN.gets.chomp.split.collect do |e| e.to_i end
h = Hash.new

a.each do |e|
  if h.include?(e)
    h[e] += 1
  else
    h[e] = 1
  end
end

keys = h.keys.sort {|x, y| y <=> x }

x = -1
y = -1

keys.each do |k|
  if x != -1 && y != -1
    break
  end

  if (x == -1 && h[k] >= 2)
    x = k
    h[k] -= 2
  end

  if (x != -1 && y == -1 && h[k] >= 2)
    y = k
    h[k] -= 2
  end
end

if (x == -1 || y == -1)
  puts 0
else
  puts x * y
end
