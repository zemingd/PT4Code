ary = gets.split(" ").map(&:to_i)

a = ary[0]
b = ary[1]
c = ary[2]
d = ary.last

if  d >= (a-c).abs 
        puts "Yes"
elsif d >= (a-b).abs and d >= (b-c).abs
    puts "Yes"
else
    puts "No"
end

