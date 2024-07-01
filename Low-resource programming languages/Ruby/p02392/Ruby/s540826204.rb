a,b,c = gets.split.map{|v|
  v.to_i
}

if a < b && b < c then
    puts "Yes"
else
    puts "No"
end
