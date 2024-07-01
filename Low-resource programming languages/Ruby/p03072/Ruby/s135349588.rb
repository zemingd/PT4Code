N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

count = 0
tmp = 0
H.each_with_index do |h, i|
  if tmp <= H[i]
    count = count + 1
    tmp = H[i]
  end
end

puts count
