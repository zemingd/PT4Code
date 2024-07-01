num, base = gets.split(' ').map(&:to_i)

size = 1

while true do
  if num >=  base ** size
    size += 1
  else    
    break
  end
end

puts size
