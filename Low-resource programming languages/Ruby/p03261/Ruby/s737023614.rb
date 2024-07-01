require 'set'
n = gets.to_i
ws = $<.map(&:chomp)
unless ws.size == ws.uniq.size
  puts "No"
  exit
end
c = nil
ws.each do |w|
  if c && w[0] != c
    puts "No"
    exit
  end
  c = w[-1]
end
puts "Yes"