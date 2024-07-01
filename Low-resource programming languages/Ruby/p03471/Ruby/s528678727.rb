n, yen = gets.split(' ').map(&:to_i)
for i in 0..n do
  for j in 0..n-i do
    k = n - i - j
    if i * 10000 + j * 5000+ k * 1000 == yen
      puts i.to_s + ' ' + j.to_s + ' ' + k.to_s
      exit
    end
  end
end

puts '-1 -1 -1'