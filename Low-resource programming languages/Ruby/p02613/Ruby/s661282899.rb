n = gets.to_i
ans = {}
n.times do |i|
    key = gets.chomp
    ans[key] = ans[key].to_i + 1
end

["AC", "WA", "TLE", "RE"].each do |key|
    puts "#{key} x #{ans[key].to_i}"
end
