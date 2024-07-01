x = gets.split(" ").map! {|i| i.to_i}
case
when x[0] > x[1] then puts "a > b"
when x[0] == x[1] then puts "a == b"
when x[0] < x[1] then puts "a < b"
end