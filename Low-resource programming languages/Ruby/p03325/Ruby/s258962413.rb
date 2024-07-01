gets
a = gets.chomp.split.map(&:to_i)
c = 0
a.each do |t|
  loop do
    break if t[-0] == 1
    t >>= 1
    c  += 1
  end
end

puts c
