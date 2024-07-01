a = []
mod = [9]
sum = 0
last = 0

5.times do
  a.push(gets.to_i)
  mod.push(a.last % 10) if a.last % 10 != 0
end

a.each do |i|
  sum += i % 10 == 0 ? i : (i / 10) * 10 + 10
  last = i if i == (i / 10) * 10 + mod.min
end

puts sum - ((last / 10) * 10 + 10) + last