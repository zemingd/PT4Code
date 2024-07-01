n = gets.to_i
i = 0
re = 0
hash = {}
while i < n do 
  ss = gets.chomp.chars.sort.join
  if hash.key?(ss) 
    re += hash[ss]
    hash[ss] += 1
  else
    hash[ss] = 1
  end
  i += 1
end
p re