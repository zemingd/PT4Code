a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
s.each_with_index do |c,i|
  if i == a
    if c != "-"
      puts "No"
      exit
    end
  else
    if c == "-"
      puts "No"
      exit
    end
  end
end

puts "Yes"