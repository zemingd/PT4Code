d = gets.to_i
delta = 25 - d
if delta.zero?
  puts "Christmas "
else
  puts "Christmas #{(1..delta).map {|_a| 'Eve'}.join(' ')}"
end
