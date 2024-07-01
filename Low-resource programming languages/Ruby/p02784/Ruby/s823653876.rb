h,a = gets.chomp.split(' ').map(&:to_i)
attacks = gets.chomp.split(' ').map(&:to_i)
if attacks.inject(0){|sum,i|sum +i} >= h
  puts "Yes"
else
  puts "No"
end