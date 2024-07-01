n, x = gets.split.map &:to_i
a = gets.split.map(&:to_i).sort
r = 0
s = 0
(0...n).each do |i|
  s += a[i]
  if s == x
    puts r + 1
    exit
  elsif s < x
    r += 1
  else
    puts r
    exit
  end
end

puts r - 1