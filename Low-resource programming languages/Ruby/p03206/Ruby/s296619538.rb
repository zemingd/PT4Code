n = gets.to_i
if n == 25 then puts "Christmas"
else puts "Christmas " + (["Eve"] * (25-n)).join(' ')
end