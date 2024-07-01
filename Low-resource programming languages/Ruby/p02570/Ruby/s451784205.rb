d, t, s = gets.split.map(&:to_i)

if (d/t.to_f).ceil <= s
  puts "Yes"
else
  puts "No"
end