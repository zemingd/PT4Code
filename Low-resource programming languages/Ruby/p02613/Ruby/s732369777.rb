N = gets.to_i
ans = {
  "AC" => 0,
  "WA" => 0,
  "TLE" => 0,
  "RE" => 0
}

N.times do
  ans[gets.chomp] += 1
end

ans.each do |k, v|
  puts "#{k} x #{v}"
end
