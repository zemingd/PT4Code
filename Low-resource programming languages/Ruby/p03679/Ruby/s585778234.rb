x,a,b = gets.chomp.split.map(&:to_i)
if a + x > b
    print("dangerous")
elsif a + x <= b
    print("safe")
else
    print("delicious")
end


