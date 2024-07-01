s=gets.chomp
t=gets.chomp
(?a..?z).each do |c|
  if s+c == t
    puts "Yes"
    exit(0)
  end
end
puts "No"