n = gets.to_i

res = ["AC", "WA", "TLE", "RE"]
hash = {
  "AC" => 0,
  "WA" => 0,
  "TLE" => 0,
  "RE" => 0,
}

n.times do
  s = gets.chomp
  hash[s] += 1
end

res.each do |s|
  puts "#{s} x #{hash[s]}"
end
