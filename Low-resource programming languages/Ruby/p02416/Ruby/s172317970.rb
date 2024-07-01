lines = gets
lines.split("\n")

#lines = [
#"123",
#"55",
#"1000",
#"0"
#]

lines.each do |line|
    exit 0 if line == "0"
    puts line.split("").inject(:+)
end