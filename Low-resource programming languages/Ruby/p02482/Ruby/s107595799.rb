a, b = gets.chomp.split.map {|s| s.to_i}
if a < b then
print("a < b\n")
elsif a > b then
print("a > b\n")
else
print("a = b\n")
end