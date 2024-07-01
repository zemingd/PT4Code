N,M = gets.chomp.split.map(&:to_i)
ary = (1..m).to_a

N.times do |i|
  buf = gets.chomp.split.map(&:to_i)
  ary = ary & buf[1..-1]
end

puts ary.length