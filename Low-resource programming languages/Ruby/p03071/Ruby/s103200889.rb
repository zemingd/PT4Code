a,b=gets.split.map{|u| u.to_i}
if a==b
    puts a+b
elsif a>b
    puts 2*a-1
else
    puts 2*b-1
end