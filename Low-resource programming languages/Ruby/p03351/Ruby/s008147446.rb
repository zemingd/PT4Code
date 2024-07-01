ary = gets.split(" ").map(&:to_i)

a = ary[0]
b = ary[1]
c = ary[2]
d = ary.last

if (a-c).abs >= d
    puts "Yes"
elsif (a-b).abs >=d and (a-c).abs >= d
    puts "Yes"
else
    puts "No"
end