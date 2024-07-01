N = gets.to_i
res = Hash.new { |h, k| h[k] = 0 }
N.times do
  res[gets.chomp] += 1
end

["AC", "WA", "TLE", "RE"].each do |s|
  puts("#{s} x #{res[s]}")
end
