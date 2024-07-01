n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i);
b = []

n.times do |i|
  b << a.index(i + 1) + 1
end

print(b.join(' '))
