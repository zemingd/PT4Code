x,y,z=gets.chomp.split(' ').map(&:to_i)
if (x==y&&y==z&&z==x)||(x!=y&&y!=z&&z!=x)
    puts "No"
else
    puts "Yes"
end