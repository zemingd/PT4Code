n = gets.to_i

s = gets.split('')

e_sum = []
num = 0
n.times do |i|
  num += 1 if s[i] == 'E'
  e_sum << num
end

counts = []
n.times do |i|
  if i == 0
    counts << e_sum[n-1] - e_sum[i]
  elsif i == n-1
    counts << (n-1-(e_sum[n-2]))
  else
    counts << (i-e_sum[i-1] + (e_sum[n-1] - e_sum[i+1]))
  end
end
puts counts.min

