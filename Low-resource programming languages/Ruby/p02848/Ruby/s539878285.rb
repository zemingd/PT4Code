n = gets.chomp.to_i
s = gets.chomp.split('')
alp = [*"A".."Z"]
res = []

s.each do |w|
  i = alp.index(w) + n
  i = i - 26 if i >= 26
  res << alp[i]
end

print(res.join)
