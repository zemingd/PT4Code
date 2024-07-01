s = gets.to_s
absList = []

for i in 0..(s.length)-3 do
  num = s[i] + s[i+1] + s[i+2]
  abs = (num.to_i - 753).abs
  absList.push(abs)
end

puts absList.min
