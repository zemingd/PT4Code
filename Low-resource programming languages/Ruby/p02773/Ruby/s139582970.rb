n = gets.to_i
hash = {}
for i in 1..n
  s = gets.chomp
  if hash[s]
    hash[s] += 1
  else
    hash[s] = 1
  end
end

puts hash.group_by{|k, v| v}.max[1].to_h.keys.sort