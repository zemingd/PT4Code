lines = gets
lines.each_line do |line|
    exit 0 if line == "0"
    puts line.split("").to_i.inject(:+)
end