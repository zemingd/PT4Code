nu = gets.chomp.split("").map(&:to_i)
le = nu.length
ans = 1000
for i in 0..le - 3
  inst = nu[i]*100 + nu[i + 1]*10 + nu[i + 2]
  if (inst - 753).abs < ans
    ans = (inst - 753).abs
  end
end

puts ans
