n = gets.chomp.to_i

results = {
  AC: 0,
  WA: 0,
  TLE: 0,
  RE: 0,
}

n.times do
  c = gets.chomp.to_sym
  results[c] += 1
end

results.each do |k, v|
  puts "#{k} x #{v}"
end