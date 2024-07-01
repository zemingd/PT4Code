n = gets.to_i

s = gets.split('')

e_sum = []
n.times do |i|
  e_sum << s[0..i].count('E')
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

