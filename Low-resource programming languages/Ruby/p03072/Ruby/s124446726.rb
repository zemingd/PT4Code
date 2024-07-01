N = gets.to_i
H = []
HH = gets
for i in 0..N-1
  H[i] = HH.split(" ")[i].to_i
end

count = 1
for j in 1..N-1
  max_num = H.slice(0,j).max
  if H[j] >= max_num
    count += 1
  end
end

puts count