x,a,b = gets.chomp.split.map(&:to_i)
if a >= x
    print("delicious")
elsif a <= x and x <= b
    print("safe")
else
    print("dangerous")
end


