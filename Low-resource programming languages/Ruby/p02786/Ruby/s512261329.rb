h = gets.to_i
def attack(h)
  has = {}
  return 1 if h == 1

  int = int
  if has["#{int}"] != nil
    return has["#{int}"]
  end

  return has["#{int}"] = 1 + attack(h/2) + attack(h/2)
end

print attack(h)
