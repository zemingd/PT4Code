n = gets.to_s
good = 0

3.times do |i|
  break if good >= 2
  if n[i] == n[i + 1]
    good += 1
  else
    good = 0
  end
end

if good >= 2
  puts "Yes"
else
  puts "No"
end
