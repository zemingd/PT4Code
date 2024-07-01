loop do
  h, w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  (1..h).each do |_|
    puts '#' * w
  end
  puts
end