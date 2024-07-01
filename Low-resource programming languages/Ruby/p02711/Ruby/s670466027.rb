N = gets.chomp

if N.length == 3
  if N.include?('7')
    puts "Yes"
  else
    puts "No"
  end
end