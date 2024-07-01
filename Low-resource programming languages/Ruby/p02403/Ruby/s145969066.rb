loop do
  h,w = gets.split.map(&:to_i)
  break if h==0 && w==0
  s = "#" * w;
  h.times { puts s }
  puts ""
end