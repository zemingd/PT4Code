n = gets.chomp.to_i
mountains = gets.chomp.split(" ").map(&:to_i)
max_mountain = 0
sum = 0
mountains.each do |mountain|
  next if  max_mountain > mountain
  sum += 1
  max_mountain = mountain
end
print("#{sum}\n")