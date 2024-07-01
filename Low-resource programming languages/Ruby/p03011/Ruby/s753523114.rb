a,b,c=gets.split.map(&:to_i)
if a+b > b+c
  if b+c > a+c
    puts a+c
  else
    puts b+c
  end
else
  puts a+b
end