N = gets.to_i
a = gets.chomp.split(" ").map { |e| e.to_i }
count = 0

for i in 0..N-1 do
  ai = a[i].to_s(2).split("").map { |e| e.to_i } #２進法の配列に直す
  n = ai.length
  for j in 0..n-1 do
    if ai[n-1-j] == 0
      count += 1
    else
      break
    end
  end
end

puts count
