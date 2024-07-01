h, a = gets.chomp.split(" ").map(&:to_i)
num = 0

while 0
  h = h - a
  num += 1
  if h <= 0
    break
  end
end

puts num