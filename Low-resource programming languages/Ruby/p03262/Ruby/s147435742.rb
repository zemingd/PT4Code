n, x_l = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)
tmp = (x + [x_l]).sort
diff = 1_000_000_000
(0..(tmp.length - 2)).each do |i|
  d = (tmp[i] - tmp[i + 1]).abs
  diff = d if d < diff
end

(0..diff).each do |i|
  a = diff - i
  r = x_l % a
  if x.all? { |e| e % a == r }
    puts a
    break
  end
end