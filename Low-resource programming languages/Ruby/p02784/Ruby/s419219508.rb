H,N=gets.chomp.split(' ').map{|n| n.to_i}
A=gets.chomp.split(' ').map{|n| n.to_i}

tmp = H
A.each do |item|
  tmp = tmp - item
end

if tmp <= 0
  puts "Yes"
else
  puts "No"
end