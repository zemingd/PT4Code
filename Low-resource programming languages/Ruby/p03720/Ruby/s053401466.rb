N,M = gets.split.map &:to_i

data = Array.new(N){0}
# warn N,M,data

M.times do
  a,b = gets.split.map &:to_i
  data[a-1] += 1
  data[b-1] += 1
end

puts data