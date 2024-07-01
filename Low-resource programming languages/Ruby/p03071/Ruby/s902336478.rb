a,b = gets.split.map(&:to_i)

if a >= b then
  if a-b == 0 then
    puts a+b
  else
    puts a+a-1
  end
else
  puts b+b-1
end
