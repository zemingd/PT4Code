# Day of Takahashi
#start10:14
a,b = gets.chomp.split(" ").map(&:to_i)
if b >= a
    puts a
else
    puts (a-1)
end