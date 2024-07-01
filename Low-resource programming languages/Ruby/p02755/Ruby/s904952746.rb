A, B = gets.split.map(&:to_i)

ret = -1
1000.times do |n|
  if (n * 0.08).to_i == A && (n * 0.1).to_i == B
    ret = n
    break
  end
end

puts ret