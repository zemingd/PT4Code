$/ = " "
a = gets.to_i
b = gets.to_i
case a <=> b
when 1 then puts "a > b"
when 0 then puts "a == b"
when -1 then puts "a < b"
end