n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

yoryoku = 0
defed = 0

n.times do |i|
  d1 = [yoryoku, as[i]].min
  nokori = as[i] - d1
  d2 = [bs[i], nokori].min
  yoryoku = bs[i] - d2

  defed += d1 + d2
end

# n-th town
d1 = [yoryoku, as[n]].min

defed += d1

p defed
