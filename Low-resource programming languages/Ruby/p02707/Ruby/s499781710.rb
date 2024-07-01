N = gets.to_i
A = gets.split.map(&:to_i)

res = Hash.new { |h, k| h[k] = 0 }

A.each do |a|
  res[a] += 1
end

1.upto(N) do |n|
  puts res[n]
end
