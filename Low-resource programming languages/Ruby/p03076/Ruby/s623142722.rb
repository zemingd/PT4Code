a = []
mod = []
sum = 0
deleted = 0

5.times do
  a.push(gets.to_i)
  mod.push(a.last % 10) if a.last % 10 != 0
end

a.each do |e|
  deleted = a.delete(e) if (e / 10) * 10 + mod.min == e
end

a.each do |e|
  sum += e % 10 == 0 ? e : (e / 10) * 10 + 10
end
 
p sum + deleted