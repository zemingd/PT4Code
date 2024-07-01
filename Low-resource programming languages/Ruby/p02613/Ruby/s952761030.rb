N = gets.to_i

SS = N.times.map { gets.chomp! }
ans = { 'AC': 0, 'WA': 0, 'TLE': 0, 'RE': 0 }

0.upto(N-1) do |i|
  ans[SS[i].to_sym] += 1
end

ans.each do |k, v|
  puts "#{k} x #{v}"
end
