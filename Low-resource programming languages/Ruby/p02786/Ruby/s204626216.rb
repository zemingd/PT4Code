h = gets.to_i

@count = 0

def attack(h, count)
  return 1 if h == 1
  
  count += 1
  count += attack(h/2, count-1) * 2
  
  return count
end

puts attack(h, 0)