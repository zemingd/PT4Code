a,b,c = gets.chomp.split(' ').map{|n| n}

if c >= a && c <= b
  puts "Yes"
else
  puts "No"
end
