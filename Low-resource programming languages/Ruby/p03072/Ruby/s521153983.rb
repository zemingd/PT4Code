n = gets.to_i
h = gets.chomp.split(" ").map(&:to_i)
cnt = 1
for i in 1..n-1
  visible = true
  for j in 0..i-1
    if h[i] < h[j]
      visible = false
    end
  end
  cnt += 1 if visible
end
puts cnt