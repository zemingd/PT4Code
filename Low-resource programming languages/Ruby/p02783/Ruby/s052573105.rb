monster, attack = gets.split(" ").map(&:to_i)

mod = monster % attack
if mod == 0
  puts monster / attack
else
  puts monster / attack + 1
end