n = gets.chomp.to_i
haitens = []
n.times do
  haitens << gets.chomp.to_i
end
sum = haitens.inject(:+)

haitens.sort.each do |haiten|
  if (sum%10 != 0)
    puts sum
    exit
  end
  sum -= haiten
end

puts 0