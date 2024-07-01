n, a, b, c = gets.split.map(&:to_i)
l = Array.new(n) { gets.to_i }
ans = Float::INFINITY

(4**n).times do |i|
  x = y = z = 0
  mp = (n - 3) * 10

  format("%0#{n}d", i.to_s(4)).each_char.with_index do |j, idx|
    case j
    when '0' then mp -= 10
    when '1' then x += l[idx]
    when '2' then y += l[idx]
    when '3' then z += l[idx]
    end
  end

  next if x == 0 || y == 0 || z == 0

  mp += (x - a).abs + (y - b).abs + (z - c).abs
  ans = [mp, ans].min
end

puts ans