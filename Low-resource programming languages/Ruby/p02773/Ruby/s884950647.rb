n = gets.to_i
ss = Hash.new(0)
n.times do
  ss[gets.chomp] += 1
end

max = ss.values.max
ans = []
ss.each do |k, v|
  if v == max
    ans << k
  end
end

puts ans.uniq.sort
