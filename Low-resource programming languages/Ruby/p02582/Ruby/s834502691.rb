s = gets.to_s
case s
when "SSS"
    puts 0
when "RRR"
    puts 3
when "RRS", "SRR"
    puts 2
else
    puts 1
end
