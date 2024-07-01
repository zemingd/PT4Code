N = gets.to_i
H = []
N.times do |i|
  H[i] = gets.to_i
end

count = 0

for i in 0..N
  max_num = H.slice(0,i).max
  if H[i] == max_num
    count += 1
  end
end

puts count