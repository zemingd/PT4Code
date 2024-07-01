num = gets.gsub(" ","").chomp.to_i

squarenum = [*1..10000].map!{|n| n*n}

if squarenum.include?(num)
  puts "Yes"
  exit!
end

puts "No"