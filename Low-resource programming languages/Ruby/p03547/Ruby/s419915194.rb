a,b = gets.split(" ").map(&:to_s)
a = a.hex
b = b.hex

case a <=> b
when 1
    puts ">"
when 0
    puts "="
when -1
    puts "<"
end