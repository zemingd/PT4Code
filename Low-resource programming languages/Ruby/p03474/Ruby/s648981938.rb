A,B = gets.split(" ").map{|i|i.to_i}
S = gets
if /^[0-9]+$/ =~ S[0..A-1] && S[A] == "-" && /^[0-9]+$/ =~ S[B..S.length]
    puts "Yes"
else
    puts "No"
end

