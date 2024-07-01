n=gets.chomp.split("").map(&:to_i)
count = 0
3.times do |i|
  if n[i] == n[i+1]
    count += 1
  else
    count = 0
  end
end
puts count >= 2 ? "Yes" : "No"