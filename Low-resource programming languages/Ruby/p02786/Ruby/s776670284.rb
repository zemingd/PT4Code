h = gets.to_i

def attack_count(h)
  return 1 if h == 1
  
  a = attack_count(h/2)
  
  a * 2 + 1
end

puts attack_count(h)