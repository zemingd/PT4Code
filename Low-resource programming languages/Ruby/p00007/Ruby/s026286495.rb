n = gets.to_i
debt = 100_000
n.times do
  debt = debt + (debt*0.05 / 1000).ceil*1000
end
p debt