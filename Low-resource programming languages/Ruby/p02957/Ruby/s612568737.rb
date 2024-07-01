# A - Harmony
#

a, b = gets.split.map(&:to_i)


if a<b
  tmp = a
  a = b
  b = tmp
end

(b..a).each do |i|
  if (a-i).abs == (b-i).abs
    puts "#{i}"
    exit 0
  end

end

puts "IMPOSSIBLE"



