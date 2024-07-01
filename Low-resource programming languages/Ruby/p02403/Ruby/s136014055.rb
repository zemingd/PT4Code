while true do
  h,w = gets.split.map(&:to_i)
  if h == 0 && w == 0 then break end
  h.times do
    puts "#"*w
  end
  puts "\n"
end
