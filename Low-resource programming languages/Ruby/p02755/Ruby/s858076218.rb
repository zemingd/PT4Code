A, B = gets.split.map(&:to_i)

ret = -1
2000.times do |n|
  if (n * 0.08).floor == A && (n * 0.1).floor == B
    ret = n
    break
  end
end

puts ret