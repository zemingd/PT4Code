line = gets.chomp.to_i
results = {"AC": 0, "WA": 0, "TLE": 0, "RE": 0}
line.times do
  results[gets.chomp] += 1
end

result.each do |k, v|
  puts "#{k} × #{v}"
end