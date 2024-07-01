n = gets.to_i
s = gets

s_e = [0]
s_w = [0]

(2..n+1).each do |i|
  if s[i-2] == 'E'
    s_e[i-1] = s_e[i-2] + 1
    s_w[i-1] = s_w[i-2]
  else
    s_e[i-1] = s_e[i-2]
    s_w[i-1] = s_w[i-2] + 1
  end
end

min = 1000000
(1..n).each do |j|
  flip = (s_w[j-1] - s_w[0]) + (s_e[n] - s_e[j])
  min = flip if flip < min
end

puts min