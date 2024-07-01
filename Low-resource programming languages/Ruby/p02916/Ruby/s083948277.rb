n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = [0]+gets.chomp.split.map(&:to_i)

point = 0
prev = 0

for x in a
  point += b[x - 1]
  if x - prev == 1
    point += c[x-1]
  end
  prev = x
end

puts point
