a=gets.split.map(&:to_i)
b=a.inject(:+)
if b<=22
    puts "bust"
else 
    puts "win"
end