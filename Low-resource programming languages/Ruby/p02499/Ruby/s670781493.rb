#!/usr/local/bin/ruby
b = Hash.new(0)
STDIN.each do |line|
 line.split("".each do |x|
  b[x.downcase] += 1
 end
end
('a','z').each do |t|
 puts "#{t}:#{b[t]}"
end