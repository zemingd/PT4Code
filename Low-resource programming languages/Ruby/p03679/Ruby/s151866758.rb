x,a,b = gets.chomp.split.map(&:to_i)
if a >= b
    print("delicious")
elsif a + x >=  b
    print("safe")
else
    print("dangerous")
end


