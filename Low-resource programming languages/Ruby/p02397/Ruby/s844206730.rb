loop{
a,b=gets.split.map &:to_i
if a==0&&b==0
break
elsif a<b
puts "#{a} #{b}"
else
puts "#{b} #{a}"
end
}