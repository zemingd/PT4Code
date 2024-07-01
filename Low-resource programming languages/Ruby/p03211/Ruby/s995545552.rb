a,ans = gets.chomp.split("").map(&:to_s),[]
for bb in 0...(a.size-2)
  ans.push(((a[bb..bb+2].join.to_i)-753).abs)
end
puts ans.min