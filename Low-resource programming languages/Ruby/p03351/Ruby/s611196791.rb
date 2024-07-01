# Your code here!
a = gets.split.map(&:to_i)
# p a
dis = a[3]
if (a[0] - a[1]).abs <= dis && (a[1] - a[2]).abs <= dis
    puts "Yes"
elsif (a[0] - a[2]).abs <= dis
    puts "Yes"
else
    puts "No"
end