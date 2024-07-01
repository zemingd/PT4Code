i = gets.chomp.split('')
i.each do |c|
  if c == "7"
    puts "Yes"
    exit
  end
end

puts "No"

