cnt = 0
while true
  input = gets
  cnt += 1
  break if input.to_i == 0
  puts "Case " << cnt.to_s << ": " << input
end