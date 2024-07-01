s = gets.chomp
case s
when "SSS"
    puts 0
when "RRR"
    puts 3
when "RRS", "SRR"
    puts 2
when "RSS", "SRS", "SSR", "RSR"
    puts 1
end
