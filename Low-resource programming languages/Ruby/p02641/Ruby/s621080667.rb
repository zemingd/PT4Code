x,n = gets.split(" ")
x = x.to_i
n = n.to_i

if n == 0
  puts x
  exit
end

ary = gets.split(" ").map(&:to_i)

i = 1

while true do
  
  if ary.include?(x-i)
  else
    puts x-i
    exit
  end
  
  if ary.include?(x+i)
  else
    puts x+i
    exit
  end
  
  i += 1
  
end