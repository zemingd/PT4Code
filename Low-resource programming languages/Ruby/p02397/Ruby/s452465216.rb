a = Array.new { Array.new(2) }
loop do
  a << gets.split().map(&:to_i).sort
  break if a.last == [0,0]
end

a.each do |v|
  puts "#{v[0]} #{v[1]}"
end