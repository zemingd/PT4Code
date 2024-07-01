a=gets.chomp.split(" ").map(&:to_i).first
if a == 3 || a == 5 || a ==7
puts 'YES'
else
puts 'NO'
end