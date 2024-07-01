s = gets.split.map(&:to_i)
a, b = s[0], s[1]

(0).upto(10000).each do |i|
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    puts i
    exit
  end
end

puts -1



