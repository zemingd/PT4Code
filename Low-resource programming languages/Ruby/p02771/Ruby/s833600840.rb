num = gets.chomp.split(" ").map(&:to_i)

if num[0] == num[1]
  if num[1] != num[2] && num[0] != num[2]
    puts "Yes"
    exit
  end
  else
  if num[1] == num[2] && num[0] != num[2] || num[0] == num[2] && num[1] != num[2]
    puts "Yes"
    exit
  end
end

puts "No"

