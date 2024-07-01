srray=gets.split.map(&:to_i)
if srray == srray.uniq
  puts "Good"
else
  puts "Bad"
end