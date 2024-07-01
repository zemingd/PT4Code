a,b = gets.split.map(&:to_i)

answer = -1

(0..10000).each do |i|
  if (i * 0.08).floor == a && (i * 0.10).floor == b
    answer = i
    break
  end
end

puts answer