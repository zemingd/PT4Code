s = gets.split.map(&:to_i)
a = s[0]
b = s[1]

0.upto(1009).each do |i|
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    puts i
    exit
  end
end

puts -1
