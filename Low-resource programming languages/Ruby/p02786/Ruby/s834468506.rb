h = gets.to_i

def destroyMonster(hp)
  if hp == 1
    return 1
  end
  return destroyMonster(hp/2) * 2 + 1
end

puts destroyMonster(h)
