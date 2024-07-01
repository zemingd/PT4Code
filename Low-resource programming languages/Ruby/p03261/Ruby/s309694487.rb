n = gets.chomp.to_i
w = []
(0..(n - 1)).each do |i|
  w << gets.chomp
end

flg = true
(1..(n - 1)).each do |i|
  prev = w[i - 1]
  curr = w[i]
  if w[0..(i - 1)].include?(curr) || prev[prev.length - 1] != curr[0]
    flg = false
    break
  end
end

flg ? puts('Yes') : puts('No')