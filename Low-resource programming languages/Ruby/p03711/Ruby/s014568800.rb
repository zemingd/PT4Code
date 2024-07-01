require "date"
x,y=gets.split.map(&:to_i)
xdate=Date.new(2020,x%12+1,1)
ydate=Date.new(2020,y%12+1,1)
if (xdate-1).day==(ydate-1).day
    puts "Yes"
else
    puts "No"
end
