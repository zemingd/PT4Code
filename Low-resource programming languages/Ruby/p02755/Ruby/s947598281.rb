a, b = gets.split.map(&:to_i)

(1..100000).each do |i|
  if (i * 0.08).floor == a && (i * 0.10).floor == b
    puts i
    exit
  end
end
puts -1
