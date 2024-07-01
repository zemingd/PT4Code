n = gets.chomp!.split("").map(&:to_i)

if n.select{ |nn| nn == 7 }.size > 0
  puts 'Yes'
else
  puts 'No'
end
