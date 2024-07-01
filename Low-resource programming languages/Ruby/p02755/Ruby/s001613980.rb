A, B = gets.split(' ').map(&:to_i)
yen = '-1'

(1..10000).each do |i|
  if (i * 0.08).floor == A && (i * 0.1).floor == B
    yen = i
    break
  end
end

puts yen