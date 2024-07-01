n = gets.chomp.to_i
judge = Hash.new(0)

n.times do
  s = gets.chomp
  judge[s] += 1
end

['AC', 'WA', 'TLE', 'RE'].each do |t|
  print(t, ' x ', judge[t], "\n")
end
