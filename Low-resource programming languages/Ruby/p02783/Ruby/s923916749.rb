def action_handler(h, a)
  residue = h % a
  return h / a if residue == 0
  return (h / a) + 1
end
h, a = gets.chop.split.map(&:to_i)
print action_handler(h, a)