a,b,c = gets.chomp.split.map(&:to_i)
if a ==b ==c
    puts No
elsif a!=b!=c
    puts No
else
    puts Yes
end