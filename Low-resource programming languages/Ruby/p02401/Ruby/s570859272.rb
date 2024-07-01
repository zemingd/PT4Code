a,b,c=gets.split.map &:to_i

if b=='+'
  puts a+b
elsif b=='-'
  puts a-b
elsif b=='/'
  puts a/b
else 
  puts a*b
end
