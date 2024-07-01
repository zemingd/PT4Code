x, n = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

if n == 0
  puts x
  exit
end

sa = ary.sort_by{|y| (y-x).abs}
i = 0
100.times do |j|
  if !ary.include?(j) && (i-x).abs > (j-x).abs
    i = j
  end
end

puts i
