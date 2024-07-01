lines = $stdin.read.split("\n")

lines.each do |l|
    puts l.split("").inject(:+)
end

#lines.each do |line|
#    exit 0 if line == "0"
#    puts line.split("").to_i.inject(:+)
#end