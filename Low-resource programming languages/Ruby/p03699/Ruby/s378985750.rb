n = gets.chomp.to_i
haiten = []
n.times do
  haiten << gets.chomp.to_i
end
sum = haiten.inject(:+)
if (sum%10 != 0)
  puts sum
  exit
end
haiten.sort.each do |h|
  if (h%10 != 0)
    puts sum - h
    exit
  end
end

puts 0