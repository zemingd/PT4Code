ary = gets.split(" ").map{|v| v.to_i}

if ary[0].odd? && ary[1].odd? then
  puts "Yes"
else
  puts "No"
end