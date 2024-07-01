/n,a,b=gets.split.map(&:to_i)/
/.sort/
/S = gets.chomp.chars/
a,b,c=gets.split.map(&:to_i)
if(a/b>=c)
  puts a/b
else
  puts c
end