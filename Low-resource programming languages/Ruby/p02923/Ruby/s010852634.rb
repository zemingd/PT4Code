N = gets.to_i
H = gets.chomp.split.map(&:to_i)

max = 0
count = 0
(N-1).times do |i|
  if H[i+1] <= H[i]
    count += 1
  else
    if count > max
      max = count
      count = 0
    end
  end
end

if count > max
  max = count
end

puts max
