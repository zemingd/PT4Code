n, k = gets.chomp.split.map(&:to_i)
al = gets.chomp.split.map(&:to_i)

seki = al[0...k].inject(&:*)
sekil = [seki]
(n-k).times do |i|
  i += 1
  temp = seki
  seki = seki / al[i-1] * al[k+i-1]
  puts temp < seki ? "Yes" : "No"
end
