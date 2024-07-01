a=[4,6,9,11]
x,y = gets.split.map(&:to_i)
if x==2 || y==2
    puts "No"
elsif (a.include?(x)&&!a.include?(y)) || (!a.include?(x)&&a.include?(y))
    puts "No"
else
    puts "Yes"
end