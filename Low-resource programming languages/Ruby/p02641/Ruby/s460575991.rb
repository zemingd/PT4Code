x,n = gets.split(" ")
x = x.to_i
n = n.to_i

if n == 0
  puts x
  exit
end

ary = gets.split(" ").map(&:to_i)

if x == 0
  puts 0
  exit
end

i = 1

while true do
  
  if ary.include?(x-i)
  else
    puts x-i
    break
  end
  
  if ary.include?(x+i)
  else
    puts x+i
    break
  end
  
  i += 1
  
end