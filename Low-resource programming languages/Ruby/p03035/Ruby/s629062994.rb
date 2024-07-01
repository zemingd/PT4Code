a,b = gets.chomp.split.map(&:to_i)
if a>=13
p b
elsif a>=6
p b/2
else
p 0
end
