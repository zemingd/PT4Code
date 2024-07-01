a,b = gets.chomp.split(" ").map(&:to_i)

if a % 2 == 1 && b % 2 == 1 then
    print ("Odd")
else
    print ("Even")
end