n = gets.to_i

counter = {
  'AC' => 0,
  'WA' => 0,
  'TLE' => 0,
  'RE' => 0,
}
n.times do
  counter[gets.chomp] += 1
end

counter.each do |k, v|
  puts "#{k} x #{v}"
end
