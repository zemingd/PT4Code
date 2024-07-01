n = gets.to_i
ans = Hash.new(0)
n.times do
  str = gets.chomp
  ans[str] += 1
end

["AC","WA","TLE","RE"].each do |s|
  puts "#{s} x #{ans[s]}"
end