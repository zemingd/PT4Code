N = gets.to_i
Hs = gets.to_s.split(" ").map(&:to_i)
sum = 0
min = 0

N.times do |cnt|
  if min <= Hs[cnt]
    sum += 1
    min = Hs[cnt]
  end
end

puts sum
