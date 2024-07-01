n, m, l = gets.split(" ").map(&:to_i)

mA = Array.new(n){Array.new(m){0}}
mB = Array.new(m){Array.new(l){0}}
for i in 0..n-1 do
  mA[i] = gets.split(" ").map(&:to_i)
end
for i in 0..m-1 do
  mB[i] = gets.split(" ").map(&:to_i)
end

for i in 0..n-1 do
  for j in 0..l-1 do
    sum = 0;
    for k in 0..m-1 do
      sum += mA[i][k] * mB[k][j]
    end
    printf "%d", sum
    printf " " if j < l-1
  end
  printf "\n"
end