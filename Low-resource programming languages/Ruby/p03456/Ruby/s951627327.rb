num = gets.gsub(" ","").chomp.to_i

squarenum = [0] + [*1..100].map!{|n| n*n}

if squarenum.include?(num)
  puts "Yes"
  exit!
end

puts "No"