hit, var = gets.chomp.split().map(&:to_i)
attacks = gets.chomp.split().map(&:to_i)
total_attack=attacks.inject(:+)
if total_attack >= hit
  puts "Yes"
else
  puts "No"
end  