n = gets.chomp!.to_i
h = {
  'AC' => 0,
  'WA' => 0,
  'TLE' => 0,
  'RE' => 0,
}
n.times do
  h[gets.chomp!] += 1
end
h.each do |k, v|
  puts "#{k} x #{v}"
end