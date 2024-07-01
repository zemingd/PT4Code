ans = { AC: 0, WA: 0, TLE: 0, RE: 0 }
puts ans.inspect
gets.to_i.times do
  s = gets.chomp
  ans[s.to_sym] += 1
end
ans.each do |k, v|
  puts "#{k} x #{v}"
end