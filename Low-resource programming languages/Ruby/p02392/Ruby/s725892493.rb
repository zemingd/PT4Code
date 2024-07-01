aryPrm = gets.split
if aryPrm[0].to_i < aryPrm[1].to_i && aryPrm[1].to_i < aryPrm[2].to_i
    puts "Yes"
else
    puts "No"
end