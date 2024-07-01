n = gets.chomp.to_i
hash = {}
sum = 0
n.times {
  s = gets.chomp.chars.sort.join
  if hash[s].nil?
    hash[s] = 1
  else
    sum += hash[s]
    hash[s] += 1
  end
}
puts sum