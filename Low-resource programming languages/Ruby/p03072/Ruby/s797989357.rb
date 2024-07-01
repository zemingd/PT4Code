n = gets.to_i
h =gets.split("\s").map(&:to_i)
max = 0
res = 0

h.each do |i|
  if i >= max
    res += 1
    max = i
  end
end

p res