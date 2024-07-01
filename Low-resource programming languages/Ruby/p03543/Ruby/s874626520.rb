a0 = gets.to_i
a1 = a0%10
a0 = a0/10
a2 = a0%10
a0 = a0/10
a3 = a0%10
a0 = a0/10
a4 = a0%10
if a2 == a3
  if a2 == a1
    puts "Yes"
  elsif a2 == a4
     puts "Yes"
  else
     puts "No"
  end
end