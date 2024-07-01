_x, _y = gets.strip.split.map(&:to_i)
_s = gets.chomp
index = _y.times.map{ gets.strip.split.map(&:to_i) }

index.each do |i|
  puts _s[i[0]-1..i[1]-1].scan("AC").size
end