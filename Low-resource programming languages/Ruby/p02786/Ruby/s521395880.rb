def attack(h)
  if h == 1
    return 1
  else
    return 1 + 2 * attack(h / 2)
  end
end

h = gets.to_i

p attack h