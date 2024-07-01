N = gets.chomp.to_i
H = gets.chomp.split(" ").map(&:to_i)

max = 0
count = 0

for i in 0...(N - 1) do
  if H[i] >= H[i+1] then
    count += 1
  else
    max = [max, count].max
    count = 0
  end
end

max = [max, count].max

p max
