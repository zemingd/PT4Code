while line = gets
  h, w = line.split(' ').map(&:to_i)
  break if h == 0 && w == 0
  h.times.each do
    puts w.times.map{|i| "#"}.join
  end
  puts ""
end
