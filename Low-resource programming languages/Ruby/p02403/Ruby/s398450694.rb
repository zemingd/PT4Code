def rec(h,w)
  h.times do
    puts "#" * w
  end
end

while true
  h, w = gets.chomp.split.map(&:to_i)
  break if w == 0 && h == 0
  rec(h, w)
  puts ""
end

