n = gets.chomp.to_s
sum = s.split(//).map(&:to_i).inject(:+)

if n % sum == 0
  puts "Yes"
else
  puts "No"
end
