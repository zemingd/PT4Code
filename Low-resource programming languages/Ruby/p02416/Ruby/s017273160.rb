lines = readlines.map(&:chomp)
lines.each do |line|
  break if line == '0'
  puts line.split(//).map(&:to_i).inject(:+)
end