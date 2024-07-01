(x, n) = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

m = [*-200..200] - p
d = 100000
r = 100000

m.each do |i|
  if d > (x - i).abs
    d = (x - i).abs
    r = i
  elsif d = (x - i).abs
    if r > i
      r = i
    end
  end
end

puts r
