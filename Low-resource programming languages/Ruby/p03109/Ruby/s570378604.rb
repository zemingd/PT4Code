S = gets.chomp.to_s
s = (S[0].to_i)*10000000+(S[1].to_i)*1000000+(S[2].to_i)*100000+(S[3].to_i)*10000+(S[5].to_i)*1000+(S[6].to_i)*100+(S[8].to_i)*10+(S[9].to_i)
if s <= 20190430
    puts "Heisei"
else 
    puts "TBD"
end