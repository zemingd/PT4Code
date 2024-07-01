s = gets.chomp.chars.sort
t = gets.chomp.chars.sort.reverse

[s.size, t.size].min.times do |i|
  next if s[i] == t[i]
  if s[i] < t[i]
    puts "Yes"
  else
    puts "No"
  end
  exit
end

puts s.size < t.size ? "Yes" : "No"