n=gets.chomp.to_i
s=gets.chomp.split("").map { |e| e.to_s }

count_w = 0
count_e = 0

n.times do |i|
  if s[i] == "E"
    count_e += 1
  else
    count_w += 1
  end
end

if count_e == 0 || count_w == 0
  puts 0
  exit
end

e_L = 0
w_L = 0
e_R = count_e
w_R = count_w

ans = n+1


n.times do |j|
  count = 0
  if s[j] == "E"
    count = w_L + e_R - 1
    e_L += 1
    e_R -= 1
  else
    count = w_L + e_R
    w_L += 1
    w_R -= 1
  end
 ans = ans > count ? count : ans
end


puts ans